import 'package:flutter_test/flutter_test.dart';

import 'i_tap_text.dart';

Future<void> iTapCorrectPairsAllTimes(WidgetTester tester) async {
  final mockTranslations = <String, String>{
    'developer': 'розробниця',
    'computer': 'компʼютер',
    'bug': 'помилка',
    'keyboard': 'клавіатура',
    'code': 'код',
    'task': 'завдання',
    'generation': 'генерація',
    'repository': 'репозиторій',
    'meeting': 'зустріч',
    'deadline': 'крайній термін',
  };

  for (var i = 0; i < mockTranslations.length; i++) {
    await iTapText(tester, mockTranslations.keys.elementAt(i));
    await iTapText(tester, mockTranslations.values.elementAt(i));
  }
}
