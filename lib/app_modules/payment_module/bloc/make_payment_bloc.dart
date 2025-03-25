import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/payment_module/class/payment_details.dart';
import 'package:serene_user_app/app_modules/payment_module/model/payment_response_model.dart';
import 'package:serene_user_app/app_modules/payment_module/service/make_payment.dart';

part 'make_payment_event.dart';
part 'make_payment_state.dart';
part 'make_payment_bloc.freezed.dart';

class MakePaymentBloc extends Bloc<MakePaymentEvent, MakePaymentState> {
  MakePaymentBloc() : super(_Initial()) {
    on<_paymentMade>((event, emit) async {
      emit(MakePaymentState.loading());
      try {
        final response = await makePayment(
          paymentDetails: event.paymentDetails,
        );
        emit(MakePaymentState.success(response));
      } catch (e) {
        emit(MakePaymentState.failure(e.toString()));
      }
    });
  }
}
