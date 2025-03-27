part of 'check_in_bloc.dart';

@freezed
class CheckInEvent with _$CheckInEvent {
  const factory CheckInEvent.started() = _Started;
  const factory CheckInEvent.checkedIn(
    int bookingId,
  ) = _checkedIn;
}
