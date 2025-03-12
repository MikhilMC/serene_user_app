import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/user_profile_model/user_profile_model.dart';
import 'package:serene_user_app/app_modules/home_screen_module/service/get_profile_data.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc() : super(_Initial()) {
    on<_userProfileFetched>((event, emit) async {
      emit(UserProfileState.loading());
      try {
        final userProfile = await getProfileData();

        emit(UserProfileState.success(userProfile));
      } catch (e) {
        emit(UserProfileState.error(e.toString()));
      }
    });
  }
}
