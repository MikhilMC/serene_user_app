import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/booking_module/class/add_property_booking_details.dart';
import 'package:serene_user_app/app_modules/booking_module/model/property_booking_response_model.dart';
import 'package:serene_user_app/app_modules/booking_module/service/add_property_booking.dart';

part 'add_booking_event.dart';
part 'add_booking_state.dart';
part 'add_booking_bloc.freezed.dart';

class AddBookingBloc extends Bloc<AddBookingEvent, AddBookingState> {
  AddBookingBloc() : super(_Initial()) {
    on<_propertyBookingAdded>((event, emit) async {
      emit(AddBookingState.loading());
      try {
        final response = await addPropertyBooking(
          bookingDetails: event.bookingDetails,
        );
        emit(AddBookingState.success(response));
      } catch (e) {
        emit(AddBookingState.error(e.toString()));
      }
    });
  }
}
