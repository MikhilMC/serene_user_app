part of 'user_bookings_bloc.dart';

@freezed
class UserBookingsState with _$UserBookingsState {
  const factory UserBookingsState.initial() = _Initial;
  const factory UserBookingsState.loading() = UserBookingsLoading;
  const factory UserBookingsState.success(
    List<UserBookingModel> userBookings,
  ) = UserBookingsSuccess;
  const factory UserBookingsState.error(
    String errorMessage,
  ) = UserBookingsError;
  const factory UserBookingsState.empty() = UserBookingsEmpty;
}
