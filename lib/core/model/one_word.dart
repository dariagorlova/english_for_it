import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_word.freezed.dart';

@freezed
class OneWord with _$OneWord {
  const factory OneWord({
    @Default('') String word,
    @Default('') String translate,
  }) = _OneWord;
}
