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
import './step/i_chose_the_correct_variants_every_time.dart';
import './step/i_tap_icon.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
    await iTapText(tester, 'learn phrases');
    await iWait(tester);
    await iTapText(tester, 'Test the learned');
    await iWait(tester);
  }
  group('''Testing knowledge (choose the correct pair 'sentence-by_another_words')''', () {
    testWidgets('''As User I want to see first sentence and answers''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Testing daily phrases');
      await iSeeText(tester, "He's proficient in Java");
      await iSeeText(tester, 'be very good at');
    });
    testWidgets('''As User I see another variants''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'have experience doing something');
      await iSeeText(tester, 'opinion/position');
      await iSeeText(tester, 'very solid');
    });
    testWidgets('''As User I'm making the wrong choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'has a background');
      await iSeeTextWithColor(tester, 1, Colors.grey);
      await iTapText(tester, 'opinion/position');
      await iSeeTextWithColor(tester, 2, Colors.grey);
    });
    testWidgets('''As User I'm be very good at the right choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'розробниця');
      await iWait(tester);
      await iDontSeeText(tester, "He's proficient in Java");
      await iSeeText(tester, 'He has a background in industrial design.');
    });
    testWidgets('''As User I finished test''', (tester) async {
      await bddSetUp(tester);
      await iChoseTheCorrectVariantsEveryTime(tester);
      await iWait(tester);
      await iSeeText(tester, 'Congratulation! You passed the test!');
    });
    testWidgets('''As User I want to return to learning phrases''', (tester) async {
      await bddSetUp(tester);
      await iTapIcon(tester, Icons.menu_book);
      await iWait(tester);
      await iDontSeeText(tester, 'Testing daily phrases');
      await iSeeText(tester, 'Phrases for Today');
    });
  });
}
