import 'package:english_for_it/core/model/phrase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_phrases.freezed.dart';

@freezed
class DailyPhrases with _$DailyPhrases {
  const factory DailyPhrases({
    required List<Phrase> phrases,
  }) = _DailyPhrases;
}
