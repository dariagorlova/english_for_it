import 'package:flutter_test/flutter_test.dart';

import 'i_tap_text.dart';
import 'i_wait.dart';

Future<void> iChoseTheCorrectTranslationEveryTime(WidgetTester tester) async {
  final listWords = <String>[
    'розробниця',
    'компʼютер',
    'клавіатура',
    'помилка',
    'розробниця',
    'компʼютер',
    'розробниця',
    'розробниця',
    'клавіатура',
    'клавіатура',
  ];

  for (final w in listWords) {
    await iTapText(tester, w);
    await iWait(tester);
  }
}
