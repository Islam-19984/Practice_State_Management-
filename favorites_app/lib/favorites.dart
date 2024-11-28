import 'package:flutter/foundation.dart';

/// Favorites Model
class Favorites extends ChangeNotifier {
  final List<String> _items = []; // List to store favorite items

  /// Getter for favorite items
  List<String> get items => _items;

  /// Add an item to favorites
  void addItem(String item) {
    if (!_items.contains(item)) {
      _items.add(item);
      notifyListeners(); // Notify listeners for UI updates
    }
  }

  /// Remove an item from favorites
  void removeItem(String item) {
    _items.remove(item);
    notifyListeners(); // Notify listeners for UI updates
  }
}
