// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/i_see_phrase.dart';
import './step/i_tap_phrase.dart';
import './step/i_see_phrase_with_color.dart';
import './step/i_dont_see_phrase.dart';
import './step/i_tap_icon.dart';
import './step/i_dont_see_text.dart';

void main() {
  group('''Testing knowledge (choose the correct pair 'sentence-by_another_words')''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
      await iTapText(tester, 'learn phrases');
      await iWait(tester);
      await iTapText(tester, 'Test the learned');
      await iWait(tester);
    }
    testWidgets('''As User I want to see first sentence and answers''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Testing daily phrases');
      await iSeePhrase(tester, "He's proficient in Java.");
      await iSeeText(tester, 'be very good at');
    });
    testWidgets('''As User I see another variants''', (tester) async {
      await bddSetUp(tester);
      await iSeePhrase(tester, 'He has extraordinary coding abilities.');
      await iSeePhrase(tester, 'He came up with a brilliant plan.');
      await iSeePhrase(tester, 'We are a customer-centric company.');
    });
    testWidgets('''As User I'm making the wrong choice''', (tester) async {
      await bddSetUp(tester);
      await iTapPhrase(tester, 'He came up with a brilliant plan.');
      await iSeePhraseWithColor(tester, 1, Colors.grey);
      await iTapPhrase(tester, 'He has extraordinary coding abilities.');
      await iSeePhraseWithColor(tester, 2, Colors.grey);
    });
    testWidgets('''As User I'm be very good at the right choice''', (tester) async {
      await bddSetUp(tester);
      await iTapPhrase(tester, "He's proficient in Java.");
      await iWait(tester);
      await iDontSeePhrase(tester, "He's proficient in Java.");
      await iSeeText(tester, 'have experience doing something');
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
