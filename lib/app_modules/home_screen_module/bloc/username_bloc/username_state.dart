part of 'username_bloc.dart';

@freezed
class UsernameState with _$UsernameState {
  const factory UsernameState.initial() = _Initial;
  const factory UsernameState.loading() = UsernameLoading;
  const factory UsernameState.success(String username) = UsernameSuccess;
  const factory UsernameState.error(String errorMessage) = UsernameError;
}
