part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = UserProfileLoading;
  const factory UserProfileState.success(
    UserProfileModel userProfile,
  ) = UserProfileSuccess;
  const factory UserProfileState.error(
    String errorMessage,
  ) = UserProfileError;
}
