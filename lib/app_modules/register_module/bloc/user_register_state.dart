part of 'user_register_bloc.dart';

@freezed
class UserRegisterState with _$UserRegisterState {
  const factory UserRegisterState.initial() = _Initial;
  const factory UserRegisterState.loading() = _UserRegistrationLoading;
  const factory UserRegisterState.success(UserRegisterResponseModel response) =
      _UserRegistrationSuccess;
  const factory UserRegisterState.failure(String errorMessage) =
      _UserRegistrationFailure;
}
