part of 'user_bookings_bloc.dart';

@freezed
class UserBookingsEvent with _$UserBookingsEvent {
  const factory UserBookingsEvent.started() = _Started;
  const factory UserBookingsEvent.userBookingFetched() = _userBookingFetched;
}
