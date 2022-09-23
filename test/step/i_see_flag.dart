import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeFlag(WidgetTester tester, String flag) async {
  await tester.tap(find.text(flag).first);
  await tester.pump();
}
