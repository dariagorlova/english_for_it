import 'package:flutter_test/flutter_test.dart';

Future<void> millisecondElapsed(WidgetTester tester, int milliseconds) async {
  await tester.pump(Duration(milliseconds: milliseconds));
  await tester.pumpAndSettle();
}
