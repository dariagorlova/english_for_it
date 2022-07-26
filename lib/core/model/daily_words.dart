import 'package:english_for_it/core/model/one_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_words.freezed.dart';

@freezed
class DailyWords with _$DailyWords {
  const factory DailyWords({
    required List<OneWord> words,
  }) = _DailyWords;
}
