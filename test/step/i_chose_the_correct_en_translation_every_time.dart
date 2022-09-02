import 'package:bdd_widget_test/step/i_tap_text.dart';
import 'package:flutter_test/flutter_test.dart';

import 'i_wait.dart';

Future<void> iChoseTheCorrectEnTranslationEveryTime(WidgetTester tester) async {
  final listWords = <String>[
    'developer',
    'computer',
    'bug',
    'keyboard',
    'code',
    'task',
    'generation',
    'repository',
    'meeting',
    'deadline',
  ];

  for (final w in listWords) {
    await iTapText(tester, w);
    await iWait(tester);
  }
}
