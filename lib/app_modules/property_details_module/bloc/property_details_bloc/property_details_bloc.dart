import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:serene_user_app/app_modules/property_details_module/model/property_details_model.dart';
import 'package:serene_user_app/app_modules/property_details_module/service/get_property_details.dart';

part 'property_details_bloc.freezed.dart';
part 'property_details_event.dart';
part 'property_details_state.dart';

class PropertyDetailsBloc
    extends Bloc<PropertyDetailsEvent, PropertyDetailsState> {
  PropertyDetailsBloc() : super(_Initial()) {
    on<_propertyDetailsFetched>((event, emit) async {
      emit(PropertyDetailsState.loading());
      try {
        final propertyDetails = await getPropertyDetails(
          propertyId: event.propertyId,
        );
        emit(PropertyDetailsState.success(propertyDetails));
      } catch (e) {
        emit(PropertyDetailsState.error(e.toString()));
      }
    });
  }
}
