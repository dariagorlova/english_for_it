// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait_second.dart';
import './step/i_see_text.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
    await iTapText(tester, "Let's start");
    await iWaitSecond(tester, 1);
  }
  group('''Learning words''', () {
    testWidgets('''''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Words for Today');
    });
  });
}
