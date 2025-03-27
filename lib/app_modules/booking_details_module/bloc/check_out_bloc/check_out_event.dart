part of 'check_out_bloc.dart';

@freezed
class CheckOutEvent with _$CheckOutEvent {
  const factory CheckOutEvent.started() = _Started;
  const factory CheckOutEvent.checkedOut(
    int bookingId,
  ) = _checkedOut;
}
