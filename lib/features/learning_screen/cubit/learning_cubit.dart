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
      return;
    } else {
      curIndex = curIndex + 1;
    }
    emit(state.copyWith(indexCurrentWord: curIndex));
  }

  void prevWord() {
    var curIndex = state.currentIndex;
    if (state.isCurrentWordFirst) {
      return;
    } else {
      curIndex = curIndex - 1;
    }
    emit(state.copyWith(indexCurrentWord: curIndex));
  }
}
