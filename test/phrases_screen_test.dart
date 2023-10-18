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
import './step/i_tap_flag.dart';
import './step/i_see_flag.dart';
import './step/millisecond_elapsed.dart';
import './step/i_see_phrase.dart';

void main() {
  group('''Learning phrases''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
      await iTapText(tester, 'learn phrases');
      await iWait(tester);
    }
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
      await iSeeText(tester, 'have experience doing something');
    });
    testWidgets('''As User I can't tap next button when last phrase on the screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIconTimes(tester, Icons.arrow_forward_ios, 10);
      await iSeeText(tester, 'remove/get rid of');
    });
    testWidgets('''As User I want to see translation phrase''', (tester) async {
      await bddSetUp(tester);
      await iTapFlag(tester, '🇺🇦');
      await iDontSeeText(tester, 'be very good at');
      await iSeeText(tester, 'бути досвідченим у');
      await iSeeFlag(tester, '🇺🇸');
    });
    testWidgets('''As User I want to see sentence''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'be very good at');
      await millisecondElapsed(tester, 1000);
      await iDontSeeText(tester, 'be very good at');
      await iSeePhrase(tester, "He's");
    });
    testWidgets('''As User I want to see translation sentence''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'be very good at');
      await millisecondElapsed(tester, 1000);
      await iTapFlag(tester, '🇺🇦');
      await iSeeText(tester, 'Він досконало володіє Java.');
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
