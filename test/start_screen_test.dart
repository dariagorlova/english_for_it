// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_dont_see_text.dart';
import './step/i_tap_icon.dart';
import './step/i_wait_for_seconds.dart';
import './step/i_tap_item.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
  }
  group('''Start of application''', () {
    testWidgets('''As a User I want to see motivational text and buttons for start''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Today is an excellent day to learn something new!');
      await iSeeText(tester, 'learn words');
      await iSeeText(tester, 'learn phrases');
    });
    testWidgets('''As a User I want to learn words and tap a button''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'learn words');
      await iWait(tester);
      await iDontSeeText(tester, 'learn words');
    });
    testWidgets('''As a User I want to learn phrases and tap a button''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'learn phrases');
      await iWait(tester);
      await iDontSeeText(tester, 'learn phrases');
    });
    testWidgets('''As a User I want to see drawer''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.menu);
      await iSeeText(tester, 'Improve Your English Level');
    });
    testWidgets('''As a User I want to know some word translation''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.menu);
      await iSeeText(tester, 'Translator');
      await iWaitForSeconds(tester, 1);
      await iTapItem(tester, 0);
      await iWaitForSeconds(tester, 1);
      await iSeeText(tester, 'Find translation');
    });
  });
}
