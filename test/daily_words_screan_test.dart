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

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
    await iTapText(tester, "Let's start");
    await iWait(tester);
  }
  group('''Learning words''', () {
    testWidgets('''As User I want to see first word''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Words for Today');
      await iSeeText(tester, 'task');
    });
    testWidgets('''As User I can't tap previous button when first word on the screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.arrow_back_ios);
      await iSeeText(tester, 'task');
    });
    testWidgets('''As User I want to see next word''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.arrow_forward_ios);
      await iDontSeeText(tester, 'task');
      await iSeeText(tester, 'code');
    });
    testWidgets('''As User I can't tap next button when last word on the screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIconTimes(tester, Icons.arrow_forward_ios, 10);
      await iSeeText(tester, 'generation');
    });
    testWidgets('''As User I want to return to start screen''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.menu_book);
      await iWait(tester);
      await iDontSeeText(tester, 'Words for Today');
      await iSeeText(tester, "Let's start");
    });
  });
}
