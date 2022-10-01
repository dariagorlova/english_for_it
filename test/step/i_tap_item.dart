import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iTapItem(WidgetTester tester, int index) async {
  await tester.tap(find.byType(ListTile).at(index));
  await tester.pump();
  // await tester.pumpAndSettle();
}
