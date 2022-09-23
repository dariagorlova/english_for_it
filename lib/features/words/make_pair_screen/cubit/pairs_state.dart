import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/word_with_answers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pairs_state.freezed.dart';

@freezed
class PairsState with _$PairsState {
  const factory PairsState({
    @Default([]) List<WordWithState> wordsOnTheLeft,
    @Default([]) List<WordWithState> wordsOnTheRight,
    @Default([]) List<String> currentPair,
    @Default(true) bool isFirstWordInPairInEN,
    @Default(0) int numberOfWrongAttempts,
  }) = _PairsState;
}

extension XPairsState on PairsState {
  bool get isLoading => wordsOnTheLeft.isEmpty;
  OneWord wordInENColumn(int index) => wordsOnTheLeft[index].word;
  OneWord wordInUAColumn(int index) => wordsOnTheRight[index].word;

  WordState stateOfWordInEN(int index) => wordsOnTheLeft[index].state;
  WordState stateOfWordInUA(int index) => wordsOnTheRight[index].state;

  bool get isFirstWordInPairExist => currentPair.length == 1;
  bool get isPairEmpty => currentPair.isEmpty;
  List<String> get curPair => currentPair;

  bool get isWordInEN => isFirstWordInPairInEN;
  List<WordWithState> get leftColumn => wordsOnTheLeft;
  List<WordWithState> get rightColumn => wordsOnTheRight;

  int get numberOfFails => numberOfWrongAttempts;
}
