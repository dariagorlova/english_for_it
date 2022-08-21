import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeCardWithColorTimes(
  WidgetTester tester,
  Color color,
  int count,
) async {
  expect(
    find.byWidgetPredicate(
      (widget) => widget is Card && widget.color == color,
    ),
    findsNWidgets(count),
  );
}
