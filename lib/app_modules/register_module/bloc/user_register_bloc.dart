import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/register_module/class/user_registration_details.dart';
import 'package:serene_user_app/app_modules/register_module/model/user_register_respnse_model/user_register_response_model.dart';
import 'package:serene_user_app/app_modules/register_module/service/user_register.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';
part 'user_register_bloc.freezed.dart';

class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc() : super(const _Initial()) {
    on<_UserRegistered>(
      (event, emit) async {
        emit(const UserRegisterState.loading());
        try {
          final response = await userRegister(
            userRegistrationDetails: event.userRegistrationDetails,
          );

          emit(UserRegisterState.success(response));
        } catch (e) {
          emit(UserRegisterState.failure(e.toString()));
        }
      },
    );
  }
}
