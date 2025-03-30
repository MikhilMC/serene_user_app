import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_models/property_action_response_model/property_action_response_model.dart';
import 'package:serene_user_app/app_modules/booking_module/class/update_property_booking_details.dart';
import 'package:serene_user_app/app_modules/booking_module/service/update_booking.dart';

part 'update_booking_event.dart';
part 'update_booking_state.dart';
part 'update_booking_bloc.freezed.dart';

class UpdateBookingBloc extends Bloc<UpdateBookingEvent, UpdateBookingState> {
  UpdateBookingBloc() : super(_Initial()) {
    on<_bookingUpdated>((event, emit) async {
      emit(UpdateBookingState.loading());
      try {
        final response = await updateBooking(
          bookingDetails: event.bookingDetails,
        );
        emit(UpdateBookingState.success(response));
      } catch (e) {
        emit(UpdateBookingState.failure(e.toString()));
      }
    });
  }
}
