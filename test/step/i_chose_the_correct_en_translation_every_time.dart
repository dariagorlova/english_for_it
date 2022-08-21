import 'package:bdd_widget_test/step/i_tap_text.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iChoseTheCorrectEnTranslationEveryTime(WidgetTester tester) async {
  final listWords = <String>[
    'task',
    'code',
    'keyboard',
    'computer',
    'bug',
    'meeting',
    'repository',
    'developer',
    'deadline',
    'generation',
  ];

  for (final w in listWords) {
    await iTapText(tester, w);
  }
}
