import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_user_app/app_models/property_action_response_model/property_action_response_model.dart';
import 'package:serene_user_app/app_modules/booking_review_module/class/review_details.dart';
import 'package:serene_user_app/app_modules/booking_review_module/service/submit_review.dart';

part 'submit_review_event.dart';
part 'submit_review_state.dart';
part 'submit_review_bloc.freezed.dart';

class SubmitReviewBloc extends Bloc<SubmitReviewEvent, SubmitReviewState> {
  SubmitReviewBloc() : super(_Initial()) {
    on<_reviewSubmitted>((event, emit) async {
      emit(SubmitReviewState.loading());
      try {
        final response = await submitReview(
          reviewDetails: event.reviewDetails,
        );
        emit(SubmitReviewState.success(response));
      } catch (e) {
        emit(SubmitReviewState.failure(e.toString()));
      }
    });
  }
}
