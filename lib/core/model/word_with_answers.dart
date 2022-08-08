import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_with_answers.freezed.dart';

@freezed
class WordWithAnswers with _$WordWithAnswers {
  const factory WordWithAnswers({
    @Default('') String word,
    @Default([]) List<String> answers,
    @Default(0) int indexOfCorrectAnswer,
  }) = _WordWithAnswers;
}
