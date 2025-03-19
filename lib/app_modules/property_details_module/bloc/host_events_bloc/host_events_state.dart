part of 'host_events_bloc.dart';

@freezed
class HostEventsState with _$HostEventsState {
  const factory HostEventsState.initial() = _Initial;
  const factory HostEventsState.loading() = HostEventsLoading;
  const factory HostEventsState.success(
    List<EventModel> events,
  ) = HostEventsSuccess;
  const factory HostEventsState.error(
    String errorMessage,
  ) = HostEventsError;
  const factory HostEventsState.empty() = HostEventsEmpty;
}
