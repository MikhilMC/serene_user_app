part of 'check_out_bloc.dart';

@freezed
class CheckOutState with _$CheckOutState {
  const factory CheckOutState.initial() = _Initial;
  const factory CheckOutState.loading() = _loading;
  const factory CheckOutState.success(
    PropertyActionResponseModel response,
  ) = _success;
  const factory CheckOutState.failure(
    String errorMessage,
  ) = _failure;
}
