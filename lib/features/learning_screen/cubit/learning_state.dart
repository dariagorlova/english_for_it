import 'package:english_for_it/core/model/one_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_state.freezed.dart';

@freezed
class LearningState with _$LearningState {
  const factory LearningState({
    required List<OneWord> dailyWords,
    @Default(0) int indexCurrentWord,
  }) = _LearningState;
}

extension XLearningState on LearningState {
  int get currentIndex => indexCurrentWord;

  OneWord get currentWord => dailyWords[indexCurrentWord];

  bool get isCurrentWordFirst => indexCurrentWord == 0;

  bool get isCurrentWordLast => indexCurrentWord == (dailyWords.length - 1);

  bool get isLoading => dailyWords.isEmpty;
}
