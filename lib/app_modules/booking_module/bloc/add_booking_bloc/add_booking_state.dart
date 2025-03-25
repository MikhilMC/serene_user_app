part of 'add_booking_bloc.dart';

@freezed
class AddBookingState with _$AddBookingState {
  const factory AddBookingState.initial() = _Initial;
  const factory AddBookingState.loading() = _Loading;
  const factory AddBookingState.success(
    PropertyBookingResponseModel response,
  ) = _success;
  const factory AddBookingState.error(
    String errorMessage,
  ) = _error;
}
