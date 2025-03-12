import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/property_list_model/property_model.dart';
import 'package:serene_user_app/app_modules/home_screen_module/service/get_property_list.dart';

part 'property_list_event.dart';
part 'property_list_state.dart';
part 'property_list_bloc.freezed.dart';

class PropertyListBloc extends Bloc<PropertyListEvent, PropertyListState> {
  PropertyListBloc() : super(_Initial()) {
    on<_propertyListFetched>((event, emit) async {
      emit(PropertyListState.loading());
      try {
        final properties = await getPropertyList(
            place: event.place, propertyType: event.propertyType);
        if (properties.isNotEmpty) {
          emit(PropertyListState.success(properties));
        } else {
          emit(PropertyListState.propertyListEmpty());
        }
      } catch (e) {
        emit(PropertyListState.error(e.toString()));
      }
    });
  }
}
