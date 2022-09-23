import 'package:english_for_it/core/model/phrase_with_answers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phrases_testing_state.freezed.dart';

@freezed
class PhrasesTestingState with _$PhrasesTestingState {
  const factory PhrasesTestingState({
    @Default([]) List<PhraseWithAnswers> phrasesWithAnswers,
    @Default(0) int indexCurrentPhrase,
    @Default([]) List<bool> answerTried,
    @Default(0) int numberOfWrongAttempts,
  }) = _PhrasesTestingState;
}

extension XPhrasesTestingState on PhrasesTestingState {
  bool isAnswerTried(int num) => answerTried[num];
  int get currentIndex => indexCurrentPhrase;
  int get numberOfFails => numberOfWrongAttempts;
  String get currentPhrase => phrasesWithAnswers[indexCurrentPhrase].phrase;
  List<List<String>> get currentPhraseAnswers =>
      phrasesWithAnswers[indexCurrentPhrase].answers;
  int get indexOfCorrectAnswerForCurrentPhrase =>
      phrasesWithAnswers[indexCurrentPhrase].indexOfCorrectAnswer;

  bool get isLoading => phrasesWithAnswers.isEmpty;
}
