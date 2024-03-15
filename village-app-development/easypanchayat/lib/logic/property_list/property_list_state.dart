import '../../model/property_list_response_model/property_list_response_model.dart';

abstract class PropertyListState {
  // final PropertyListResponseModel items;
  final List<Datum> items;
  PropertyListState(this.items);
}

class PropertyListInitial extends PropertyListState {
  PropertyListInitial(super.items);
}

class PropertyListLoaded extends PropertyListState {
  PropertyListLoaded(super.items);
}

class PropertyListLoading extends PropertyListState {
  PropertyListLoading(super.items);
}

class PropertyListError extends PropertyListState {
  final String? errorMesage;
  PropertyListError(this.errorMesage, super.items);
}

class LogoutState extends PropertyListState {
  LogoutState(super.items);
}
