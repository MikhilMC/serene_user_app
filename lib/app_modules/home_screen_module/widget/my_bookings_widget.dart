import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/bloc/user_bookings_bloc/user_bookings_bloc.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/booking_card.dart';
import 'package:serene_user_app/app_widgets/custom_error_widget.dart';
import 'package:serene_user_app/app_widgets/empty_list.dart';

class MyBookingsWidget extends StatefulWidget {
  const MyBookingsWidget({super.key});

  @override
  State<MyBookingsWidget> createState() => _MyBookingsWidgetState();
}

class _MyBookingsWidgetState extends State<MyBookingsWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<UserBookingsBloc>()
        .add(UserBookingsEvent.userBookingFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBookingsBloc, UserBookingsState>(
      builder: (context, state) {
        if (state is UserBookingsError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is UserBookingsEmpty) {
          return EmptyList(
            message: "You haven't done any bookings.",
          );
        }

        if (state is! UserBookingsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final userBookings = state.userBookings;

        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          itemCount: userBookings.length,
          itemBuilder: (context, index) {
            return BookingCard(booking: userBookings[index]);
          },
        );
      },
    );
  }
}
