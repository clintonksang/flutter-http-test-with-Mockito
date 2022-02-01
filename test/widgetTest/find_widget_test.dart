import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdevtest/new_widget.dart';

void main() {
  testWidgets('Finds keys in Widget', (WidgetTester tester) async {
// ARRANGE
    const Key key1 = Key('key2');
    await tester.pumpWidget(const MyWidget());

    final findText = find.byKey(key1);

    expect(findText, findsOneWidget);
  });

  testWidgets('Finds keys in Widget', (WidgetTester tester) async {
// ARRANGE
    const Key key1 = Key('key2');
    await tester.pumpWidget(const MyWidget());

    final findText = find.byKey(key1);

    expect(findText, findsOneWidget);
  });
}
