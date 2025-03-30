part of 'update_booking_bloc.dart';

@freezed
class UpdateBookingEvent with _$UpdateBookingEvent {
  const factory UpdateBookingEvent.started() = _Started;
  const factory UpdateBookingEvent.bookingUpdated(
    UpdatePropertyBookingDetails bookingDetails,
  ) = _bookingUpdated;
}
