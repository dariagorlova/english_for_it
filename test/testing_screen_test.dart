// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/i_see_text_with_color.dart';
import './step/i_dont_see_text.dart';
import './step/i_chose_the_correct_translation_every_time.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
    await iTapText(tester, "Let's start");
    await iWait(tester);
    await iTapText(tester, 'Translate EN to UA');
    await iWait(tester);
  }
  group('''Testing knowledge''', () {
    testWidgets('''As User I want to see first word and answers''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Testing daily words');
      await iSeeText(tester, 'developer');
      await iSeeText(tester, 'розробниця');
    });
    testWidgets('''As User I'm making the wrong choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'помилка');
      await iSeeTextWithColor(tester, 1, Colors.grey);
      await iTapText(tester, 'клавіатура');
      await iSeeTextWithColor(tester, 2, Colors.grey);
    });
    testWidgets('''As User I'm making the right choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'розробниця');
      await iWait(tester);
      await iDontSeeText(tester, 'developer');
      await iSeeText(tester, 'computer');
    });
    testWidgets('''As User I finished test''', (tester) async {
      await bddSetUp(tester);
      await iChoseTheCorrectTranslationEveryTime(tester);
      await iWait(tester);
      await iSeeText(tester, 'Congratulation! You passed the test!');
    });
  });
}
