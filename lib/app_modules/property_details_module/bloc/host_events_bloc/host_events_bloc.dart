import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_modules/property_details_module/model/event_model.dart';
import 'package:serene_user_app/app_modules/property_details_module/service/get_events.dart';

part 'host_events_event.dart';
part 'host_events_state.dart';
part 'host_events_bloc.freezed.dart';

class HostEventsBloc extends Bloc<HostEventsEvent, HostEventsState> {
  HostEventsBloc() : super(_Initial()) {
    on<_hostEventsFetched>((event, emit) async {
      emit(HostEventsState.loading());
      try {
        final events = await getEvents(
          hostId: event.hostId,
        );
        if (events.isNotEmpty) {
          emit(HostEventsState.success(events));
        } else {
          emit(HostEventsState.empty());
        }
      } catch (e) {
        emit(HostEventsState.error(e.toString()));
      }
    });
  }
}
