import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_models/property_action_response_model/property_action_response_model.dart';
import 'package:serene_user_app/app_modules/report_host_module/class/report_details.dart';
import 'package:serene_user_app/app_modules/report_host_module/service/report_host.dart';

part 'report_host_event.dart';
part 'report_host_state.dart';
part 'report_host_bloc.freezed.dart';

class ReportHostBloc extends Bloc<ReportHostEvent, ReportHostState> {
  ReportHostBloc() : super(_Initial()) {
    on<_hostReported>((event, emit) async {
      emit(ReportHostState.loading());
      try {
        final response = await reportHost(reportDetails: event.reportDetails);
        emit(ReportHostState.success(response));
      } catch (e) {
        emit(ReportHostState.failure(e.toString()));
      }
    });
  }
}
