part of 'property_details_bloc.dart';

@freezed
class PropertyDetailsState with _$PropertyDetailsState {
  const factory PropertyDetailsState.initial() = _Initial;
  const factory PropertyDetailsState.loading() = PropertyDetailsLoading;
  const factory PropertyDetailsState.success(
    PropertyDetailsModel propertyDetails,
  ) = PropertyDetailsSuccess;
  const factory PropertyDetailsState.error(
    String error,
  ) = PropertyDetailsError;
}
