part of 'report_host_bloc.dart';

@freezed
class ReportHostState with _$ReportHostState {
  const factory ReportHostState.initial() = _Initial;
  const factory ReportHostState.loading() = _loading;
  const factory ReportHostState.success(
    PropertyActionResponseModel response,
  ) = _success;
  const factory ReportHostState.failure(
    String errorMessage,
  ) = _failure;
}
