part of 'submit_review_bloc.dart';

@freezed
class SubmitReviewState with _$SubmitReviewState {
  const factory SubmitReviewState.initial() = _Initial;
  const factory SubmitReviewState.loading() = _loading;
  const factory SubmitReviewState.success(
    PropertyActionResponseModel response,
  ) = _success;
  const factory SubmitReviewState.failure(
    String errorMessage,
  ) = _failure;
}
