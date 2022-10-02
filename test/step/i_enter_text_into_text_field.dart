import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iEnterTextIntoTextField(WidgetTester tester, String text) async {
  await tester.enterText(find.byType(TextField), text);
  await tester.pumpAndSettle();
}
