part of 'make_payment_bloc.dart';

@freezed
class MakePaymentEvent with _$MakePaymentEvent {
  const factory MakePaymentEvent.started() = _Started;
  const factory MakePaymentEvent.paymentMade(
    PaymentDetails paymentDetails,
  ) = _paymentMade;
}
