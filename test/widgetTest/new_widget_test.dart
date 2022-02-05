import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdevtest/new_widget.dart';

void main() {
  testWidgets('Finds title, message', (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget());

    final titleFinder = find.text('Finds title');
    final messageFinder = find.text('message');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
