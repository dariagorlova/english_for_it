import 'package:freezed_annotation/freezed_annotation.dart';

part 'phrase.freezed.dart';

@freezed
class Phrase with _$Phrase {
  const factory Phrase({
    @Default(-1) int newId,
    @Default('') String phrase,
    @Default('') String byAnotherWords,
    @Default('') String sentence,
    @Default('') String byAnotherWordsTranslation,
    @Default('') String sentenceTranslation,
  }) = _Phrase;
}
