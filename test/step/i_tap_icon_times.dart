import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iTapIconTimes(
  WidgetTester tester,
  IconData icon,
  int times,
) async {
  for (var t = 0; t < times; t++) {
    await tester.tap(find.byIcon(icon));
    await tester.pump();
  }
}
