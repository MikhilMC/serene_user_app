part of 'check_in_bloc.dart';

@freezed
class CheckInState with _$CheckInState {
  const factory CheckInState.initial() = _Initial;
  const factory CheckInState.loading() = _Loading;
  const factory CheckInState.success(
    PropertyActionResponseModel response,
  ) = _success;
  const factory CheckInState.failure(
    String errorMessage,
  ) = _failure;
}
