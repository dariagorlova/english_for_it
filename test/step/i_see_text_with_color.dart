import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeTextWithColor(
  WidgetTester tester,
  int count,
  Color color,
) async {
  expect(
    find.byWidgetPredicate(
      (widget) => widget is Text && widget.style?.color == color,
    ),
    findsNWidgets(count),
  );
}
