import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/user_booking_model/user_booking_model.dart';
import 'package:serene_user_app/app_modules/home_screen_module/service/get_user_bookings.dart';

part 'user_bookings_event.dart';
part 'user_bookings_state.dart';
part 'user_bookings_bloc.freezed.dart';

class UserBookingsBloc extends Bloc<UserBookingsEvent, UserBookingsState> {
  UserBookingsBloc() : super(_Initial()) {
    on<_userBookingFetched>((event, emit) async {
      emit(UserBookingsState.loading());
      try {
        final userBookings = await getUserBookings();
        if (userBookings.isNotEmpty) {
          emit(UserBookingsState.success(userBookings));
        } else {
          emit(UserBookingsState.empty());
        }
      } catch (e) {
        emit(UserBookingsState.error(e.toString()));
      }
    });
  }
}
