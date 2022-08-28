//import 'package:english_for_it/core/service/daily_words_repository.dart';
//import 'package:english_for_it/core/service/dbase_service.dart';
import 'package:english_for_it/core/service/vocabulary.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWordsRepository extends Mock implements Vocabulary {}

Vocabulary getWordsRepository() {
  final mock = MockWordsRepository();
  when(mock.getAllWords).thenReturn([
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
  ]);
  return mock;
}

void main() {
  //final _mockWordsRepository = getWordsRepository();
  //const _seed = 0;
  //final _dbase = DbaseService();
  //late final DailyWordsRepository sut;
  setUp(() {
    //sut = DailyWordsRepository(_dbase, _seed);
  });

  group('Daily Words Respotiroty Tests', () {
    test('repository instantiated', () {
      // Arrange (Given)
      // Act (When)
      // Assert (Then)
      //expect(sut, isNotNull);
    });
  });
}
