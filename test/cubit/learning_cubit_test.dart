import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:english_for_it/core/service/navigator.dart';
import 'package:english_for_it/features/words/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/routes/app_router.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDailyRepository extends Mock implements DailyRepository {}

void main() {
  final router = AppRouter();
  final mockWordsRepository = MockDailyRepository();
  when(mockWordsRepository.getDailyWords).thenAnswer((_) async {
    return [];
  });

  late final LearningCubit sut;
  setUp(() {
    sut = LearningCubit(
      mockWordsRepository,
      EnglishNavigator(router),
    );
  });

  group('Learning cubit tests', () {
    test('getDailyWords updates state with words list', () async {
      // Arrange (Given)
      // Act (When)
      await sut.getDailyWords();
      // Assert (Then)
      expect(sut.state.dailyWords.isEmpty, isTrue);
    });
  });
}
