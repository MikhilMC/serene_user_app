part of 'submit_review_bloc.dart';

@freezed
class SubmitReviewEvent with _$SubmitReviewEvent {
  const factory SubmitReviewEvent.started() = _Started;
  const factory SubmitReviewEvent.reviewSubmitted(
    ReviewDetails reviewDetails,
  ) = _reviewSubmitted;
}
