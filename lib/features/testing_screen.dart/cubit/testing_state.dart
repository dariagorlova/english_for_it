import 'package:english_for_it/core/model/word_with_answers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'testing_state.freezed.dart';

@freezed
class TestingState with _$TestingState {
  const factory TestingState({
    @Default([]) List<WordWithAnswers> wordsWithAnswers,
    @Default(0) int indexCurrentWord,
    @Default([]) List<bool> answerTried,
    @Default(0) int numberOfWrongAttempts,
  }) = _TestingState;
}

extension XTrainingState on TestingState {
  int get currentIndex => indexCurrentWord;
  int get numberOfFails => numberOfWrongAttempts;
  //WordWithAnswers get currentWord => wordsWithAnswers[indexCurrentWord];
  bool isAnswerTried(int num) => answerTried[num];
  //void answerWasTried(int num) => answerTried[num] = true;

  String get currentWordEN => wordsWithAnswers[indexCurrentWord].word;
  List<String> get currentWordAnswers =>
      wordsWithAnswers[indexCurrentWord].answers;
  int get indexOfCorrectAnswerForCurrentWord =>
      wordsWithAnswers[indexCurrentWord].indexOfCorrectAnswer;

  bool get isLoading => wordsWithAnswers.isEmpty;
}
