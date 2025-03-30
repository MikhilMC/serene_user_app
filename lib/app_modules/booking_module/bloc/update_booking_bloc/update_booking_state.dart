part of 'update_booking_bloc.dart';

@freezed
class UpdateBookingState with _$UpdateBookingState {
  const factory UpdateBookingState.initial() = _Initial;
  const factory UpdateBookingState.loading() = _loading;
  const factory UpdateBookingState.success(
    PropertyActionResponseModel response,
  ) = _success;
  const factory UpdateBookingState.failure(
    String errorMessage,
  ) = _failure;
}
