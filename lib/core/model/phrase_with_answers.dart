import 'package:freezed_annotation/freezed_annotation.dart';

part 'phrase_with_answers.freezed.dart';

//enum PhraseState { initial, checking, correctly, wrong }

@freezed
class PhraseWithAnswers with _$PhraseWithAnswers {
  const factory PhraseWithAnswers({
    @Default('') String phrase,
    @Default([]) List<List<String>> answers,
    @Default(0) int indexOfCorrectAnswer,
  }) = _PhraseWithAnswers;
}
