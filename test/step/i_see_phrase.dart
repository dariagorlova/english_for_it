import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeePhrase(
  WidgetTester tester,
  String text,
) async {
  expect(
    find.byWidgetPredicate(
      (widget) =>
          widget is RichText && widget.text.toPlainText().startsWith(text),
    ),
    findsOneWidget,
  );
  //expect(find.text(text), findsOneWidget);
}
