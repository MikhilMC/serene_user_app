part of 'property_list_bloc.dart';

@freezed
class PropertyListEvent with _$PropertyListEvent {
  const factory PropertyListEvent.started() = _Started;
  const factory PropertyListEvent.propertyListFetched({
    required String place,
    required String propertyType,
  }) = _propertyListFetched;
}
