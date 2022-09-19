// import 'package:mocktail/mocktail.dart';
// import 'package:translator/translator.dart';

// class MockGoogleTranslator extends Mock implements GoogleTranslator {}

// class FakeTranslation extends Fake implements Translation {
//   FakeTranslation(this._text);

//   final String _text;

//   @override
//   String get text => _text;
// }

// GoogleTranslator getGoogleTranslator() {
//   final mock = MockGoogleTranslator();
//   when(
//     () => mock.translate(any(), from: any(named: 'from'), 
//to: any(named: 'to')),
//   ).thenAnswer((invocation) async {
//     final word = invocation.positionalArguments.first;
//     final translation = _mockTranslations[word]!;
//     return FakeTranslation(translation);
//   });
//   return mock;
// }

// final _mockTranslations = <String, String>{
//   'developer': 'розробниця',
//   'computer': 'компʼютер',
//   'bug': 'помилка',
//   'keyboard': 'клавіатура',
//   'code': 'код',
//   'task': 'завдання',
//   'generation': 'генерація',
//   'repository': 'репозиторій',
//   'meeting': 'зустріч',
//   'deadline': 'крайній термін',
// };
