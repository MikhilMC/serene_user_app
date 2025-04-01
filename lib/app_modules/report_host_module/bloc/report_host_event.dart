part of 'report_host_bloc.dart';

@freezed
class ReportHostEvent with _$ReportHostEvent {
  const factory ReportHostEvent.started() = _Started;
  const factory ReportHostEvent.hostReported(
    ReportDetails reportDetails,
  ) = _hostReported;
}
