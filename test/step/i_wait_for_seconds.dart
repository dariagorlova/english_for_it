import 'package:flutter_test/flutter_test.dart';

Future<void> iWaitForSeconds(WidgetTester tester, int second) async {
  await tester.pump(const Duration(seconds: 1));
}
