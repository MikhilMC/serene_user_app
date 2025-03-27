part of 'cancel_booking_bloc.dart';

@freezed
class CancelBookingState with _$CancelBookingState {
  const factory CancelBookingState.initial() = _Initial;
  const factory CancelBookingState.loading() = _loading;
  const factory CancelBookingState.success(
    CancelBookingResponseModel response,
  ) = _success;
  const factory CancelBookingState.failure(
    String errorMessage,
  ) = _failure;
}
