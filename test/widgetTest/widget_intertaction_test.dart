import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdevtest/widget_intertaction.dart';

void main() {
  testWidgets('Widget Interaction', (WidgetTester tester) async {
// Think of it like real pump, you expect something else come out of it.

// First initialise pump for widget and pass content
    // find widget(Tank)
    await tester.pumpWidget(const TodoList());
    // enter Water to pump
    // start pump text(water) in textfield
    await tester.enterText(find.byType(TextField), 'water');

    // find tap and start pumping() to main
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // check if water is found
    expect(find.text('water'), findsOneWidget);

    // initialise reset
    await tester.drag(find.byType(Dismissible), const Offset(500.0, 0.0));

    // Build the widget until the dismiss animation ends.
    // reset pump reset button = setstate
    await tester.pumpAndSettle();

    // Ensure that the water   is no longer on pump.
    expect(find.text('water'), findsNothing);
  });
  testWidgets('check if textfield passes texts', (WidgetTester tester) async {
// ARRANGE
    await tester.pumpWidget(TodoList());

// ACT
    await tester.enterText(find.byType(TextField), 'waterishere');

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

// ASSERT
    expect(find.text('waterishere'), findsOneWidget);
  });
}
