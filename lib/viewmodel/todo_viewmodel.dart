
import 'package:flutter/material.dart';

class TodoViewModel extends ChangeNotifier {
  List < TodoItem > todos = [];

  void addItemToList(TodoItem item) {
    todos.add(item);
    notifyListeners();
  }

  void updateItem(TodoItem item) {
    final i = todos.indexWhere((t) => t.id == item.id);
    if (i != -1) todos[i] = item;
    notifyListeners();
  }

  void deleteItemById(int id) {
    todos.removeWhere((t) => t.id == id);
    notifyListeners();
  }

  void deleteAllItems() {
    todos.clear();
    notifyListeners();
  }
}

class TodoItem {
  final int id;
  final String title;
  final String description;
  final int createdAt;
  final int updatedAt;

  TodoItem({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });
}