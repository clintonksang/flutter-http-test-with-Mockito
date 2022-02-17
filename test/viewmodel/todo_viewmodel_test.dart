import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdevtest/viewmodel/todo_viewmodel.dart';

void main() {
  test('call to do model', () {
    final model = TodoViewModel();

    //  Act
    final item = TodoItem(
      id: 1,
      title: 'Buy groceries',
      description: 'Go to the mall and shop for next month’s stock.',
      createdAt: 1,
      updatedAt: 1,
    );

    // expect(model.todos., matcher)
  });
}
