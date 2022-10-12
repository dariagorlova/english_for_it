import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/routes/app_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class EnglishNavigator {
  const EnglishNavigator(this._router);

  final AppRouter _router;

  void pop() => _router.pop();

  void startApp() => _router.push<void>(const StartRoute());

  Future<void> openLearningWordsScreen() => _router.push<void>(
        const LearningRoute(),
      );
  Future<void> openTrainingForWords(
    List<OneWord> words,
    int variant,
  ) =>
      _router.push<void>(
        TestingRoute(
          words: words,
          variantOfTest: variant,
        ),
      );

  Future<void> openTrainingMakePairs(
    List<OneWord> words,
  ) =>
      _router.push<void>(
        MakePairRoute(words: words),
      );

  Future<void> openCongratulationsScreen(int numberOfWrongAnswers) =>
      _router.push<void>(
        CongratulationRoute(numberOfWrongAnswers: numberOfWrongAnswers),
      );

  Future<void> openSearchWordScreen() => _router.push<void>(
        const SearchWordRoute(),
      );

  Future<void> openIrregularVerbsScreen() => _router.push<void>(
        const IrregularVerbsRoute(),
      );

  Future<void> openLearningPhrasesScreen() =>
      _router.push<void>(const PhrasesRoute());

  Future<void> openTestingPhrasesScreen(List<Phrase> phrases) =>
      _router.push<void>(PhrasesTestingRoute(phrases: phrases));
}
