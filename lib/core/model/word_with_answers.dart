import 'package:english_for_it/core/model/one_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_with_answers.freezed.dart';

enum WordState { initial, checking, correctly, wrong, tried }

@freezed
class WordWithAnswers with _$WordWithAnswers {
  const factory WordWithAnswers({
    @Default('') String word,
    @Default([]) List<String> answers,
    @Default(0) int indexOfCorrectAnswer,
  }) = _WordWithAnswers;
}

@freezed
class WordWithState with _$WordWithState {
  const factory WordWithState({
    @Default(
      OneWord(
        word: '',
        translate: '',
      ),
    )
        OneWord word,
    @Default(WordState.initial)
        WordState state,
  }) = _WordWithState;
}
