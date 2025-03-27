import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/booking_details_module/model/property_action_response_model.dart';
import 'package:serene_user_app/app_modules/booking_details_module/service/check_out.dart';

part 'check_out_event.dart';
part 'check_out_state.dart';
part 'check_out_bloc.freezed.dart';

class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  CheckOutBloc() : super(_Initial()) {
    on<_checkedOut>((event, emit) async {
      emit(CheckOutState.loading());
      try {
        final response = await checkOut(
          bookingId: event.bookingId,
        );
        emit(CheckOutState.success(response));
      } catch (e) {
        emit(CheckOutState.failure(e.toString()));
      }
    });
  }
}
