part of 'property_list_bloc.dart';

@freezed
class PropertyListState with _$PropertyListState {
  const factory PropertyListState.initial() = _Initial;
  const factory PropertyListState.loading() = PropertyListLoading;
  const factory PropertyListState.success(
    List<PropertyModel> properties,
  ) = PropertyListSuccess;
  const factory PropertyListState.error(
    String errorMessage,
  ) = PropertyListError;
  const factory PropertyListState.propertyListEmpty() = PropertyListEmpty;
}
