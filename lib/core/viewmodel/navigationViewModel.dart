import 'package:stacked/stacked.dart';

class NavigationViewModel extends BaseViewModel {
  int _selectedNavBar = 2;
  int get selectedNavBar => _selectedNavBar;
  setSelectedNavBar(int value) {
    _selectedNavBar = value;
    notifyListeners();
  }
}
