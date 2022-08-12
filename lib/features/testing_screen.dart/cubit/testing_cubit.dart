import 'dart:math';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/word_with_answers.dart';
import 'package:english_for_it/features/testing_screen.dart/cubit/testing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class TestingCubit extends Cubit<TestingState> {
  TestingCubit(
    @factoryParam List<OneWord> words,
  ) : super(
          const TestingState(
            wordsWithAnswers: [],
            indexCurrentWord: 0,
            answerTried: [],
            numberOfWrongAttempts: 0,
          ),
        ) {
    init(words);
  }

  void init(List<OneWord> dailyWords) {
    if (dailyWords.isEmpty) return;

    final listTranslations = dailyWords
        .map(
          (word) => word.translate,
        )
        .toList();

    final words = dailyWords.map(
      (w) {
        final answers = <String>[w.translate];
        while (true) {
          final tmpWord = _getRandomElement(listTranslations);
          if (!answers.contains(tmpWord)) {
            answers.add(tmpWord);
          }
          if (answers.length == 4) {
            break;
          }
        }
        answers.shuffle();

        return WordWithAnswers(
          word: w.word,
          answers: answers,
          indexOfCorrectAnswer: answers.indexWhere(
            (element) => element == w.translate,
          ),
        );
      },
    ).toList();
    final listAnswers = List.generate(4, (_) => false);

    emit(
      TestingState(wordsWithAnswers: words, answerTried: listAnswers),
    );
  }

  String _getRandomElement<String>(List<String> allWords) {
    final i = Random().nextInt(allWords.length);
    return allWords[i];
  }

  bool checkChoise(int choise, BuildContext context) {
    if (state.indexOfCorrectAnswerForCurrentWord != choise) {
      final list2 = [...state.answerTried]..[choise] = true;
      emit(
        state.copyWith(
          answerTried: list2,
          numberOfWrongAttempts: state.numberOfFails + 1,
        ),
      );

      return false;
    } else {
      if (state.currentIndex < state.wordsWithAnswers.length) {
        final listNew = List.generate(4, (index_) => false);

        final newVal = state.currentIndex + 1;
        if (newVal != state.wordsWithAnswers.length) {
          emit(
            state.copyWith(
              indexCurrentWord: state.currentIndex + 1,
              answerTried: listNew,
            ),
          );
        } else {
          final numberOfFails = state.numberOfFails;
          context.push('/congratulation?times=$numberOfFails');

          emit(
            state.copyWith(
              indexCurrentWord: 0,
              answerTried: listNew,
              numberOfWrongAttempts: 0,
            ),
          );
        }
      }
      return true;
    }
  }

  void endTest(BuildContext context) {
    // if (state.currentIndex == state.wordsWithAnswers.length) {
    //context.push('/congratulation, extra: state.numberOfWrongAttempts');
    //context.push('/congratulation?times=$state.numberOfWrongAttempts');
    //  final numberOfFails = state.numberOfFails;
    //  context.push('/congratulation?times=$numberOfFails');
    //}
  }
}
