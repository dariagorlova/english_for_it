import 'dart:math';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/word_with_answers.dart';
import 'package:english_for_it/core/service/navigator.dart';
import 'package:english_for_it/features/words/testing_screen.dart/cubit/testing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TestingCubit extends Cubit<TestingState> {
  TestingCubit(
    @Named('translates_seed') int translatesSeed,
    @factoryParam List<OneWord> words,
    @factoryParam int variantENtoUA,
    this._router,
  )   : _random = Random(translatesSeed),
        super(
          const TestingState(),
        ) {
    variantENtoUA == 0 ? init(words) : initUA(words);
  }

  final Random _random;
  final EnglishNavigator _router;

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

  void initUA(List<OneWord> dailyWords) {
    if (dailyWords.isEmpty) return;

    final listTranslations = dailyWords
        .map(
          (word) => word.word,
        )
        .toList();

    final words = dailyWords.map(
      (w) {
        final answers = <String>[w.word];
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
          word: w.translate,
          answers: answers,
          indexOfCorrectAnswer: answers.indexWhere(
            (element) => element == w.word,
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
    final i = _random.nextInt(allWords.length);
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
          //context.go('/congratulation?times=$numberOfFails');
          _router.openCongratulationsScreen(numberOfFails);

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

  void backToLearn() {
    //context.push('/learning');
    _router.openLearningWordsScreen();
  }
}
