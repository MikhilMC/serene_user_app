part of 'host_events_bloc.dart';

@freezed
class HostEventsEvent with _$HostEventsEvent {
  const factory HostEventsEvent.started() = _Started;
  const factory HostEventsEvent.hostEventsFetched(
    int hostId,
  ) = _hostEventsFetched;
}
