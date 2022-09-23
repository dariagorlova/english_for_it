import 'package:flutter_test/flutter_test.dart';

Future<void> iSeePhrase(WidgetTester tester, String text) async {
  //final t = TextSpan(text: text);
  // expect(
  //   find.byWidgetPredicate(
  //     (widget) => widget is RichText && widget.text == t,
  //   ),
  //   findsOneWidget,
  // );
  expect(find.text(text), findsOneWidget);
}
