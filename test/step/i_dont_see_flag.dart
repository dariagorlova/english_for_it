import 'package:flutter_test/flutter_test.dart';

Future<void> iDontSeeFlag(WidgetTester tester, String flag) async {
  expect(find.text(flag), findsOneWidget);
}
