import 'package:flutter/foundation.dart';

class FavouriteItemProvider with ChangeNotifier {
  List<int> _selectedItems = [];

  List<int> get selectedItems => _selectedItems;
  void addItems(int values) {
    _selectedItems.add(values);
    notifyListeners();
  }

  void remove(int values) {
    _selectedItems.remove(values);
    notifyListeners();
  }
}
