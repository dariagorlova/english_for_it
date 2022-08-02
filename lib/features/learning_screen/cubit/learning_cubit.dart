import 'dart:async';

import 'package:english_for_it/core/service/daily_words_repository.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LearningCubit extends Cubit<LearningState> {
  LearningCubit(
    this._currentWordRepository,
  ) : super(const LearningState(dailyWords: [])) {
    unawaited(getDailyWords());
  }

  final DailyWordsRepository _currentWordRepository;

  Future<void> getDailyWords() async {
    final words = await _currentWordRepository.getDailyWords();
    emit(LearningState(dailyWords: words));
  }

  void nextWord() {
    var curIndex = state.currentIndex;
    if (state.isCurrentWordLast) {
      //curIndex = 0;
      return;
    } else {
      curIndex = curIndex + 1;
    }
    emit(state.copyWith(indexCurrentWord: curIndex));
  }

  void prevWord() {
    var curIndex = state.currentIndex;
    if (state.isCurrentWordFirst) {
      //curIndex = state.dailyWords.length;
      return;
    } else {
      curIndex = curIndex - 1;
    }
    emit(state.copyWith(indexCurrentWord: curIndex));
  }

  // void getWords() {
  //   emit(
  //     const LearningState.loading(),
  //   );

  //   final dailyWords = _currentWordRepository.getDailyWords();

  //   emit(
  //     LearningState.loaded(
  //       dailyWords: dailyWords,
  //     ),
  //   );
  // }

  // int? get currentIndex {
  //   final index = state.mapOrNull(loaded: (state) => state.indexCurrentWord);
  //   return index;
  // }

  // OneWord? get currentWord {
  //   final word = state.mapOrNull(
  //       loaded: (state) => state.dailyWords[state.indexCurrentWord],);
  //   return word;
  // }

  // bool get isCurrentWordFirst {
  //   return currentIndex == 0;
  // }

  //   bool get isCurrentWordLast {
  //   final length = state.mapOrNull(loaded: (state) => state.dailyWords.length);
  //   return currentIndex == (length!-1);
  // }

  // void nextWord() {
  //   var index = currentIndex;
  //   if (isCurrentWordLast) {
  //     index = 0;
  //   } else {
  //     index = index! + 1;
  //   }

  //   final words = state.mapOrNull(loaded: (state) => state.dailyWords);

  //   emit(
  //     LearningState.loaded(
  //       indexCurrentWord: index,
  //       dailyWords: words!,
  //     ),
  //   );
  // }

  // void prevWord() {
  //   var index = currentIndex;
  //   if (isCurrentWordFirst) {
  //     final length = state.mapOrNull(loaded: (state) => state.dailyWords.length);
  //     index = length;
  //   } else {
  //     index = index! - 1;
  //   }
  //   final words = state.mapOrNull(loaded: (state) => state.dailyWords);
  //   emit(
  //     LearningState.loaded(
  //       indexCurrentWord: index!,
  //       dailyWords: words!,
  //     ),
  //   );
  // }
}
