import 'package:english_for_it/core/service/vocabulary.dart';
import 'package:mocktail/mocktail.dart';

class MockWordsRepository extends Mock implements Vocabulary {}

Vocabulary getWordsRepository() {
  final mock = MockWordsRepository();
  when(mock.getAllWords).thenReturn([
    'developer',
    'computer',
  ]);
  return mock;
}
