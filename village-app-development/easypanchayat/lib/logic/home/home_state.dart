enum HomeItem {
  certificate,
  tax,
}

abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  HomeInitial();
}

class DropdownState extends HomeState {
  final selectedItem;

  DropdownState(this.selectedItem);
}
