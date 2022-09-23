// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/i_see_phrase.dart';
import './step/i_tap_icon.dart';
import './step/i_dont_see_phrase.dart';
import './step/i_tap_icon_times.dart';
import './step/i_tap_flag.dart';
import './step/i_see_flag.dart';
import './step/i_tap_phrase.dart';
import './step/i_dont_see_text.dart';

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
      await iSeePhrase(tester, 'be very good at');
    });
    testWidgets('''As User I can't tap previous button when first phrase on the screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.arrow_back_ios);
      await iSeePhrase(tester, 'be very good at');
    });
    testWidgets('''As User I want to see next phrase''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.arrow_forward_ios);
      await iDontSeePhrase(tester, 'be very good at');
      await iSeePhrase(tester, 'have experience doing something');
    });
    testWidgets('''As User I can't tap next button when last phrase on the screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIconTimes(tester, Icons.arrow_forward_ios, 10);
      await iSeePhrase(tester, 'remove/get rid of');
    });
    testWidgets('''As User I want to see translation phrase''', (tester) async {
      await bddSetUp(tester);
      await iTapFlag(tester, '🇺🇦');
      await iDontSeePhrase(tester, 'be very good at');
      await iSeePhrase(tester, 'бути досвідченим у');
      await iSeeFlag(tester, '🇺🇸');
    });
    testWidgets('''As User I want to see sentence''', (tester) async {
      await bddSetUp(tester);
      await iTapPhrase(tester, 'be very good at');
      await iWait(tester);
      await iDontSeePhrase(tester, 'be very good at');
      await iSeePhrase(tester, "He's proficient in Java");
    });
    testWidgets('''As User I want to see translation sentence''', (tester) async {
      await bddSetUp(tester);
      await iTapPhrase(tester, 'be very good at');
      await iTapFlag(tester, '🇺🇦');
      await iSeePhrase(tester, 'Він досконало володіє Java');
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
