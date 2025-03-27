part of 'booking_details_bloc.dart';

@freezed
class BookingDetailsEvent with _$BookingDetailsEvent {
  const factory BookingDetailsEvent.started() = _Started;
  const factory BookingDetailsEvent.bookingDetailsFetched(
    int bookingId,
  ) = _bookingDetailsFetched;
}
