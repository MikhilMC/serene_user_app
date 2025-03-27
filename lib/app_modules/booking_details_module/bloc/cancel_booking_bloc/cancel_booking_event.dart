part of 'cancel_booking_bloc.dart';

@freezed
class CancelBookingEvent with _$CancelBookingEvent {
  const factory CancelBookingEvent.started() = _Started;
  const factory CancelBookingEvent.bookingCancelled(
    int bookingId,
  ) = _bookingCancelled;
}
