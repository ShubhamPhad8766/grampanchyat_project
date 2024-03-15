import 'package:easypanchayat/logic/property_list/property_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import '../../repositories/property_list/property_list_repo.dart';

class PropertyListCubit extends Cubit<PropertyListState> {
  final PropertyListRepo _propertyListRepo = PropertyListRepo();
  PropertyListCubit() : super(PropertyListInitial([]));

  void getPropertyListData() async {
    try {
      emit(PropertyListLoading([]));
      var box = GetStorage();
      String? userId = box.read('_id');

      print(userId);
      print("data call ");
      var response = await _propertyListRepo.propertyListData();
      response.fold((error) {
        print('${error.message}');
        emit(PropertyListError(error.message, state.items));
      }, (data) {
        print('${data}..................................');
        emit(PropertyListLoaded(data.data ?? []));
        print(state.items.first.id);
      });
    } catch (e) {
      emit(PropertyListError(e.toString(), state.items));
    }
  }
}
