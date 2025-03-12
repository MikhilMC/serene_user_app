part of 'property_details_bloc.dart';

@freezed
class PropertyDetailsEvent with _$PropertyDetailsEvent {
  const factory PropertyDetailsEvent.started() = _Started;
  const factory PropertyDetailsEvent.propertyDetailsFetched(
    int propertyId,
  ) = _propertyDetailsFetched;
}
