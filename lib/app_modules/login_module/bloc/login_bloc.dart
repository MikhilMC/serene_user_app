import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/login_module/class/login_details.dart';
import 'package:serene_user_app/app_modules/login_module/model/login_response_model/login_response_model.dart';
import 'package:serene_user_app/app_modules/login_module/service/user_login.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(_Initial()) {
    on<_loggedin>((event, emit) async {
      emit(LoginState.loading());
      try {
        final response = await userLogin(loginDetails: event.loginDetails);

        emit(LoginState.success(response));
      } catch (e) {
        emit(LoginState.failure(e.toString()));
      }
    });
  }
}
