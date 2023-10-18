// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/i_see_card_with_color_times.dart';
import './step/i_tap_icon.dart';

void main() {
  group('''Testing knowledge (make pairs)''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
      await iTapText(tester, 'learn words');
      await iWait(tester);
      await iTapText(tester, 'Make pairs');
      await iWait(tester);
    }
    testWidgets('''As User I want to see all words with translate''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Make pairs');
      await iSeeText(tester, 'developer');
      await iSeeText(tester, 'розробниця');
    });
    testWidgets('''As User I choose word''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'developer');
      await iSeeCardWithColorTimes(tester, Colors.blue.shade200, 1);
    });
    testWidgets('''As User I choose another word in same column''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'developer');
      await iTapText(tester, 'computer');
      await iSeeCardWithColorTimes(tester, Colors.blue.shade200, 1);
    });
    testWidgets('''As User I choose two words in different columns (right choice)''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'developer');
      await iTapText(tester, 'розробниця');
      await iSeeCardWithColorTimes(tester, Colors.green.shade300, 2);
    });
    testWidgets('''As User I choose two words in different columns (wrong choice)''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'developer');
      await iTapText(tester, 'помилка');
      await iSeeCardWithColorTimes(tester, Colors.red.shade300, 2);
    });
    testWidgets('''As User I want to return to learning words''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.menu_book);
      await iWait(tester);
      await iSeeText(tester, 'Words for Today');
    });
  });
}
