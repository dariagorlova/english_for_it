// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/i_see_text_with_color.dart';
import './step/i_tap_icon.dart';
import './step/i_dont_see_text.dart';

void main() {
  group('''Testing knowledge (choose the correcct translation of the Ukrainian word)''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
      await iTapText(tester, 'learn words');
      await iWait(tester);
      await iTapText(tester, 'Translate UA to EN');
      await iWait(tester);
    }
    testWidgets('''As User I want to see first word and answers''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Testing daily words');
      await iSeeText(tester, 'розробниця');
      await iSeeText(tester, 'developer');
    });
    testWidgets('''As User I'm making the wrong choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'code');
      await iSeeTextWithColor(tester, 1, Colors.grey);
      await iTapText(tester, 'task');
      await iSeeTextWithColor(tester, 2, Colors.grey);
    });
    testWidgets('''As User I'm making the right choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'developer');
      await iWait(tester);
      await iSeeText(tester, 'компʼютер');
    });
    testWidgets('''As User I want to return to learning words''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.menu_book);
      await iWait(tester);
      await iDontSeeText(tester, 'Testing daily words');
      await iSeeText(tester, 'Words for Today');
    });
  });
}
