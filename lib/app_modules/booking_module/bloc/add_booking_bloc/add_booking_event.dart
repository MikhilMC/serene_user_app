part of 'add_booking_bloc.dart';

@freezed
class AddBookingEvent with _$AddBookingEvent {
  const factory AddBookingEvent.started() = _Started;
  const factory AddBookingEvent.propertyBookingAdded(
    AddPropertyBookingDetails bookingDetails,
  ) = _propertyBookingAdded;
}
