import 'package:flutter_test/flutter_test.dart';

Future<void> iDontSeePhrase(WidgetTester tester, String text) async {
  // expect(
  //   find.byWidgetPredicate(
  //     (widget) => widget is RichText && widget.text == text,
  //   ),
  //   findsNothing,
  // );
  expect(find.text(text), findsNothing);
}
