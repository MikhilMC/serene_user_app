part of 'user_register_bloc.dart';

@freezed
class UserRegisterEvent with _$UserRegisterEvent {
  const factory UserRegisterEvent.started() = _Started;
  const factory UserRegisterEvent.userRegistered(
    UserRegistrationDetails userRegistrationDetails,
  ) = _UserRegistered;
}
