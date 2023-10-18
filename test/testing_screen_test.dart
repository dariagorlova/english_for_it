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
import './step/i_tap_icon.dart';

void main() {
  group('''Testing knowledge (choose the correcct translation of the English word)''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
      await iTapText(tester, 'learn words');
      await iWait(tester);
      await iTapText(tester, 'Translate EN to UA');
      await iWait(tester);
    }
    testWidgets('''As User I want to see first word and answers''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'Testing daily words');
      await iSeeText(tester, 'developer');
      await iSeeText(tester, 'розробниця');
    });
    testWidgets('''As User I see translation variants''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'код');
      await iSeeText(tester, 'завдання');
      await iSeeText(tester, 'репозиторій');
    });
    testWidgets('''As User I'm making the wrong choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'код');
      await iSeeTextWithColor(tester, 1, Colors.grey);
      await iTapText(tester, 'завдання');
      await iSeeTextWithColor(tester, 2, Colors.grey);
    });
    testWidgets('''As User I'm making the right choice''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'розробниця');
      await iWait(tester);
      await iDontSeeText(tester, 'developer');
      await iSeeText(tester, 'computer');
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
