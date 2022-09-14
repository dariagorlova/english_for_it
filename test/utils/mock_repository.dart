import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockWordsRepository extends Mock implements DailyRepository {}

DailyRepository getWordsRepository() {
  final mock = MockWordsRepository();
  when(mock.getDailyWords).thenAnswer((_) async {
    return const [
      OneWord(word: 'developer', translate: 'розробниця'),
      OneWord(word: 'computer', translate: 'компʼютер'),
      OneWord(word: 'bug', translate: 'помилка'),
      OneWord(word: 'keyboard', translate: 'клавіатура'),
      OneWord(word: 'code', translate: 'код'),
      OneWord(word: 'task', translate: 'завдання'),
      OneWord(word: 'generation', translate: 'генерація'),
      OneWord(word: 'repository', translate: 'репозиторій'),
      OneWord(word: 'meeting', translate: 'зустріч'),
      OneWord(word: 'deadline', translate: 'крайній термін'),
    ];
  });
  return mock;
}
