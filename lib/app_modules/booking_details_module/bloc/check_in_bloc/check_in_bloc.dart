import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_models/property_action_response_model/property_action_response_model.dart';
import 'package:serene_user_app/app_modules/booking_details_module/service/check_in.dart';

part 'check_in_event.dart';
part 'check_in_state.dart';
part 'check_in_bloc.freezed.dart';

class CheckInBloc extends Bloc<CheckInEvent, CheckInState> {
  CheckInBloc() : super(_Initial()) {
    on<_checkedIn>((event, emit) async {
      emit(CheckInState.loading());
      try {
        final response = await checkIn(
          bookingId: event.bookingId,
        );
        emit(CheckInState.success(response));
      } catch (e) {
        emit(CheckInState.failure(e.toString()));
      }
    });
  }
}
