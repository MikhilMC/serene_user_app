import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_utils/app_local_storage.dart';

part 'username_event.dart';
part 'username_state.dart';
part 'username_bloc.freezed.dart';

class UsernameBloc extends Bloc<UsernameEvent, UsernameState> {
  UsernameBloc() : super(_Initial()) {
    on<_usernameRetreived>((event, emit) async {
      emit(UsernameState.loading());
      try {
        final username = await AppLocalStorage.getUsername();
        emit(UsernameState.success(username));
      } catch (e) {
        emit(UsernameState.error(e.toString()));
      }
    });
  }
}
