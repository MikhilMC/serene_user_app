part of 'username_bloc.dart';

@freezed
class UsernameEvent with _$UsernameEvent {
  const factory UsernameEvent.started() = _Started;
  const factory UsernameEvent.usernameRetreived() = _usernameRetreived;
}
