import 'dart:async';
import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:english_for_it/features/words/learning_screen/cubit/learning_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class LearningCubit extends Cubit<LearningState> {
  LearningCubit(
    this._currentWordRepository,
  ) : super(const LearningState(dailyWords: [])) {
    //initTTS();
    unawaited(getDailyWords());
  }

  final DailyRepository _currentWordRepository;

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

  void goToTest(BuildContext context, int variant) {
    var path = '/testing';
    switch (variant) {
      case 0:
        path = '/testing';
        break;
      case 1:
        path = '/testingUA';
        break;
      case 2:
        path = '/makePairs';
        break;
    }

    context.go(path, extra: state.dailyWords);
  }

  void backToStart(BuildContext context) {
    context.go('/');
  }
}
