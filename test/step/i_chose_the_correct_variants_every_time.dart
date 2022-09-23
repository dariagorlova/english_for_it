import 'package:flutter_test/flutter_test.dart';

import 'i_tap_text.dart';
import 'i_wait.dart';

Future<void> iChoseTheCorrectVariantsEveryTime(WidgetTester tester) async {
  final listWords = <String>[
    'be very good at',
    'have experience doing something',
    'opinion/position',
    'very solid',
    'great/remarkable',
    'prioritizing the customers',
    'contribute',
    'invent/think of',
    'be useful for your particular case',
    'remove/get rid of',
  ];

  for (final w in listWords) {
    await iTapText(tester, w);
    await iWait(tester);
  }
}
