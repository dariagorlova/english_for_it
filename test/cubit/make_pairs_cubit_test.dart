import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:english_for_it/core/service/navigator.dart';
import 'package:english_for_it/features/words/make_pair_screen/cubit/pairs_cubit.dart';
import 'package:english_for_it/routes/app_router.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDailyRepository extends Mock implements DailyRepository {}

void main() {
  final router = AppRouter();
  final mockWordsRepository = MockDailyRepository();
  when(mockWordsRepository.getDailyWords).thenAnswer((_) async {
    return const [
      // OneWord(word: 'developer', translate: 'розробниця'),
      // OneWord(word: 'computer', translate: 'компʼютер'),
      // OneWord(word: 'bug', translate: 'помилка'),
      // OneWord(word: 'keyboard', translate: 'клавіатура'),
      // OneWord(word: 'code', translate: 'код'),
      // OneWord(word: 'task', translate: 'завдання'),
      // OneWord(word: 'generation', translate: 'генерація'),
      // OneWord(word: 'repository', translate: 'репозиторій'),
      // OneWord(word: 'meeting', translate: 'зустріч'),
      // OneWord(word: 'deadline', translate: 'крайній термін'),
    ];
  });

  late final PairsCubit sut;
  setUp(() async {
    final words = await mockWordsRepository.getDailyWords();
    sut = PairsCubit(
      words,
      EnglishNavigator(router),
    );
  });

  group('Search cubit tests', () {
    test('Updates state with words list', () async {
      final words = await mockWordsRepository.getDailyWords();
      sut.init(words);

      expect(sut.state.wordsOnTheLeft.isEmpty, isTrue);
    });
  });
}
