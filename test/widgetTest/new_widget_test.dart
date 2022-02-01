import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdevtest/new_widget.dart';

void main() {
  testWidgets('Finds title, message', (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget());

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
