import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iTapPhrase(WidgetTester tester, String text) async {
  await tester.tap(
    find.byWidgetPredicate(
      (widget) =>
          widget is RichText && widget.text.toPlainText().startsWith(text),
    ),
  );
  //await tester.tap(find.text(text));
  await tester.pump();
}
