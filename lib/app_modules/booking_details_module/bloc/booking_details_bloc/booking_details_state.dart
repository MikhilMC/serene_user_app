part of 'booking_details_bloc.dart';

@freezed
class BookingDetailsState with _$BookingDetailsState {
  const factory BookingDetailsState.initial() = _Initial;
  const factory BookingDetailsState.loading() = BookingDetailsLoading;
  const factory BookingDetailsState.success(
    BookingDetailsModel bookingDetails,
  ) = BookingDetailsSuccess;
  const factory BookingDetailsState.error(
    String errorMessage,
  ) = BookingDetailsError;
}
