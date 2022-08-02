import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_word.freezed.dart';

@freezed
class OneWord with _$OneWord {
  const factory OneWord({
    @Default('') String word,
    @Default('') String translate,
  }) = _OneWord;
}

// import 'package:flutter/material.dart';
// import 'package:translator/translator.dart';

// @immutable
// class TranslateToUA {
//   const TranslateToUA({
//     required this.wordEN,
//     required this.wordUA,
//   });
//   final String wordEN;
//   final String wordUA;

//   @override
//   int get hashCode => wordEN.hashCode ^ wordUA.hashCode;

//   TranslateToUA copyWith({
//     String? wordEN,
//     String? wordUA,
//   }) {
//     return TranslateToUA(
//       wordEN: wordEN ?? this.wordEN,
//       wordUA: wordUA ?? this.wordUA,
//     );
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is TranslateToUA &&
//         other.wordEN == wordEN &&
//         other.wordUA == wordUA;
//   }
// }

// class OneWord {
//   OneWord({required this.wordPair}) {
//     init();
//   }
//   TranslateToUA wordPair;

//   Future<void> init() async {
//     final translator = GoogleTranslator();
//     final translation = await translator.translate(
//       wordPair.wordEN,
//       from: 'en',
//       to: 'uk',
//     );
//     wordPair = wordPair.copyWith(wordUA: translation.text);
//   }
// }
