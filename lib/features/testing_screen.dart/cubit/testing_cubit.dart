import 'dart:math';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/word_with_answers.dart';
import 'package:english_for_it/features/testing_screen.dart/cubit/testing_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  bool checkChoise(int choise) {
    if (state.indexOfCorrectAnswerForCurrentWord != choise) {
      final listAnswers = state.answerTried;
      //listAnswers[choise] = true;

      final list2 = <bool>[];
      for (var i = 0; i < listAnswers.length; i++) {
        if (i == choise) {
          list2.add(true);
        } else {
          list2.add(listAnswers[i]);
        }
      }

      emit(state.copyWith(answerTried: list2));
      return false;
    } else {
      final listNew = List.generate(4, (index_) => false);

      emit(
        state.copyWith(
          indexCurrentWord: state.currentIndex + 1,
          answerTried: listNew,
        ),
      );

      return true;
    }
  }
}
