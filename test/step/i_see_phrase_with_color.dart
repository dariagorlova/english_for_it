import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeePhraseWithColor(
  WidgetTester tester,
  int count,
  Color color,
) async {
  expect(
    find.byWidgetPredicate(
      (widget) => widget is RichText && widget.text.style?.color == color,
    ),
    findsNWidgets(count),
  );
}
