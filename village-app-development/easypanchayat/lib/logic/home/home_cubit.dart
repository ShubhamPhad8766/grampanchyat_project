import 'package:bloc/bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void updateSelectedValue(selectedItem) {
    print('Selected Item: $selectedItem');
    emit(DropdownState(selectedItem));
  }
}
