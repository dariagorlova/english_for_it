//import 'package:english_for_it/core/service/daily_words_repository.dart';
//import 'package:english_for_it/core/service/dbase_service.dart';
import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:english_for_it/core/service/navigator.dart';
//import 'package:english_for_it/core/service/vocabulary.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/search_cubit.dart';
import 'package:english_for_it/routes/app_router.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDailyRepository extends Mock implements DailyRepository {}

void main() {
  final mockWordsRepository = MockDailyRepository();
  final router = AppRouter();
  when(mockWordsRepository.getAllWords).thenAnswer((_) async {
    return [];
  });

  late final SearchCubit sut;
  setUp(() {
    sut = SearchCubit(
      mockWordsRepository,
      EnglishNavigator(router),
    );
  });

  group('Search cubit tests', () {
    test('getAllWords updates state with words list', () async {
      // Arrange (Given)
      // Act (When)
      await sut.getAllWords();
      // Assert (Then)
      expect(sut.state.words.isEmpty, isTrue);
    });
  });
}
