import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/booking_details_module/model/cancel_booking_response_model.dart';
import 'package:serene_user_app/app_modules/booking_details_module/service/cancel_booking.dart';

part 'cancel_booking_event.dart';
part 'cancel_booking_state.dart';
part 'cancel_booking_bloc.freezed.dart';

class CancelBookingBloc extends Bloc<CancelBookingEvent, CancelBookingState> {
  CancelBookingBloc() : super(_Initial()) {
    on<_bookingCancelled>((event, emit) async {
      emit(CancelBookingState.loading());
      try {
        final response = await cancelBooking(
          bookingId: event.bookingId,
        );

        emit(CancelBookingState.success(response));
      } catch (e) {
        emit(CancelBookingState.failure(e.toString()));
      }
    });
  }
}
