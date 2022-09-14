// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/i_tap_icon.dart';
import './step/i_dont_see_text.dart';
import './step/i_tap_icon_times.dart';
import './step/i_dont_see_icon.dart';
import './step/i_see_icon.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
    await iTapText(tester, 'learn phrases');
    await iWait(tester);
  }
  group('''Learning phrases''', () {
    testWidgets('''As User I want to see first phrase''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Phrases for Today');
      await iSeeText(tester, 'be very good at');
    });
    testWidgets('''As User I can't tap previous button when first phrase on the screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.arrow_back_ios);
      await iSeeText(tester, 'be very good at');
    });
    testWidgets('''As User I want to see next phrase''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.arrow_forward_ios);
      await iDontSeeText(tester, 'be very good at');
      await iSeeText(tester, 'opinion/position');
    });
    testWidgets('''As User I can't tap next button when last phrase on the screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIconTimes(tester, Icons.arrow_forward_ios, 10);
      await iSeeText(tester, 'deadline');
    });
    testWidgets('''As User I want to see translation phrase''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.ukrainian);
      await iDontSeeText(tester, 'be very good at');
      await iSeeText(tester, 'бути досвідченим у');
      await iDontSeeIcon(tester, Icons.ukrainian);
      await iSeeIcon(tester, Icons.english);
    });
    testWidgets('''As User I want to see sentence''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'be very good at');
      await iDontSeeText(tester, 'be very good at');
      await iSeeText(tester, "He's proficient in Java");
    });
    testWidgets('''As User I want to see translation sentence''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'be very good at');
      await iTapIcon(tester, Icons.ukrainian);
      await iSeeText(tester, 'Він досконало володіє Java');
    });
    testWidgets('''As User I want to return to start screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.home);
      await iWait(tester);
      await iDontSeeText(tester, 'Phrases for Today');
      await iSeeText(tester, 'learn words');
    });
  });
}
