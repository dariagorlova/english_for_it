// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_dont_see_text.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
  }
  group('''Start of application''', () {
    testWidgets('''As a User I want to see motivational text and button for start''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Today is an excellent day to learn something new!');
      await iSeeText(tester, "Let's start");
    });
    testWidgets('''As a User I tap a button''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, "Let's start");
      await iWait(tester);
      await iDontSeeText(tester, "Let's start");
    });
  });
}
