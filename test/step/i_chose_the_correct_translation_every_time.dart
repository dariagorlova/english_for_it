import 'package:flutter_test/flutter_test.dart';

import 'i_tap_text.dart';
import 'i_wait.dart';

Future<void> iChoseTheCorrectTranslationEveryTime(WidgetTester tester) async {
  final listWords = <String>[
    'розробниця',
    'компʼютер',
    'помилка',
    'клавіатура',
    'код',
    'завдання',
    'генерація',
    'репозиторій',
    'зустріч',
    'крайній термін',
  ];

  for (final w in listWords) {
    await iTapText(tester, w);
    await iWait(tester);
  }
}
