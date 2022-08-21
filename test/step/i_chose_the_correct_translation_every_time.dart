import 'package:flutter_test/flutter_test.dart';

import 'i_tap_text.dart';

Future<void> iChoseTheCorrectTranslationEveryTime(WidgetTester tester) async {
  final listWords = <String>[
    'завдання',
    'код',
    'клавіатура',
    'компʼютер',
    'помилка',
    'зустріч',
    'репозиторій',
    'розробниця',
    'крайній термін',
    'генерація',
  ];

  for (final w in listWords) {
    await iTapText(tester, w);
  }
}
