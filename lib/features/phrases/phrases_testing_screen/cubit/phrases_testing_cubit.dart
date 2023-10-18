import 'dart:math';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/core/model/phrase_with_answers.dart';
import 'package:english_for_it/core/service/navigator.dart';
import 'package:english_for_it/features/phrases/phrases_testing_screen/cubit/phrases_testing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PhrasesTestingCubit extends Cubit<PhrasesTestingState> {
  PhrasesTestingCubit(
    @Named('translates_seed') int translatesSeed,
    @factoryParam List<Phrase> phrases,
    this._router,
  )   : _random = Random(translatesSeed),
        super(
          const PhrasesTestingState(),
        ) {
    init(phrases);
  }

  final Random _random;
  final EnglishNavigator _router;

  void init(List<Phrase> dailyPhrases) {
    if (dailyPhrases.isEmpty) return;

    final phrases = dailyPhrases.map(
      (w) {
        final rightAnswer = _breakStringOnParts(w.sentence, w.phrase);
        final answers = [rightAnswer];
        while (true) {
          final tmpPhrase = _getRandomElement(dailyPhrases);
          final sentence = _breakStringOnParts(
            tmpPhrase.sentence,
            tmpPhrase.phrase,
          );
          var isAnswersContainsSentence = false;
          for (final e in answers) {
            if (e.first == sentence.first) {
              isAnswersContainsSentence = true;
              break;
            }
          }
          if (!isAnswersContainsSentence) answers.add(sentence);

          if (answers.length == 4) {
            break;
          }
        }
        answers.shuffle();

        return PhraseWithAnswers(
          phrase: w.byAnotherWords,
          answers: answers,
          indexOfCorrectAnswer: answers.indexWhere(
            (element) => element == rightAnswer,
          ),
        );
      },
    ).toList();
    final listAttempts = List.generate(4, (_) => false);

    emit(
      PhrasesTestingState(
        phrasesWithAnswers: phrases,
        answerTried: listAttempts,
      ),
    );
  }

  List<String> _breakStringOnParts(String sentence, String phrase) {
    // sentence = 'I finally applied for that job';
    // phrase = 'applied for';
    // result: 'I finally','applied for','that job'
    final sentenceBySmallParts = <String>['', '', ''];

    if (!sentence.contains(phrase)) {
      sentenceBySmallParts[0] = sentence;
    } else {
      final phraseByWords = phrase.split(' ');

      var startWord = '';
      var endWord = '';
      var startIndex = -1;
      var endIndex = -1;

      if (phraseByWords.length == 1) {
        startWord = phraseByWords[0]; //'applied';
        endWord = phraseByWords[0]; //'applied';
        startIndex = sentence.indexOf(startWord);
        endIndex = sentence.indexOf(startWord) + startWord.length;
      } else {
        startWord = phraseByWords[0]; //'applied';
        endWord = phraseByWords[phraseByWords.length - 1]; //for
        startIndex = sentence.indexOf(startWord);
        endIndex = sentence.indexOf(endWord) + endWord.length;
      }

      final partBeforePhrase = startIndex == 0
          ? '' // phrase begins a sentence
          : sentence.substring(0, startIndex).trim();
      final partAfterPhrase = endIndex == sentence.length
          ? '' // phrase ends a sentence
          : sentence.substring(endIndex, sentence.length).trim();

      sentenceBySmallParts[0] = partBeforePhrase; // 'I finally'
      sentenceBySmallParts[1] = ' $phrase '; // ' applied for ' <- will bold on screen
      sentenceBySmallParts[2] = partAfterPhrase; // 'that job'
    }

    return sentenceBySmallParts;
  }

  Phrase _getRandomElement(List<Phrase> allPhrases) {
    final i = _random.nextInt(allPhrases.length);
    return allPhrases[i];
  }

  bool checkChoise(int choise, BuildContext context) {
    if (state.indexOfCorrectAnswerForCurrentPhrase != choise) {
      final list2 = [...state.answerTried]..[choise] = true;
      emit(
        state.copyWith(
          answerTried: list2,
          numberOfWrongAttempts: state.numberOfFails + 1,
        ),
      );

      return false;
    } else {
      if (state.currentIndex < state.phrasesWithAnswers.length) {
        final listNew = List.generate(4, (index_) => false);

        final newVal = state.currentIndex + 1;
        if (newVal != state.phrasesWithAnswers.length) {
          emit(
            state.copyWith(
              indexCurrentPhrase: state.currentIndex + 1,
              answerTried: listNew,
            ),
          );
        } else {
          final numberOfFails = state.numberOfFails;
          //context.go('/congratulation?times=$numberOfFails');
          _router.openCongratulationsScreen(numberOfFails);

          emit(
            state.copyWith(
              indexCurrentPhrase: 0,
              answerTried: listNew,
              numberOfWrongAttempts: 0,
            ),
          );
        }
      }
      return true;
    }
  }

  void backToLearn(BuildContext context) {
    //context.push('/learningPhrases');
    _router.openLearningPhrasesScreen();
  }
}
