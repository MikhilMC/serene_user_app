part of 'make_payment_bloc.dart';

@freezed
class MakePaymentState with _$MakePaymentState {
  const factory MakePaymentState.initial() = _Initial;
  const factory MakePaymentState.loading() = _loading;
  const factory MakePaymentState.success(
    PaymentResponseModel response,
  ) = _success;
  const factory MakePaymentState.failure(
    String errorMessage,
  ) = _failure;
}
