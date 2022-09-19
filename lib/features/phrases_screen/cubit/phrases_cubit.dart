import 'dart:async';

import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:english_for_it/features/phrases_screen/cubit/phrases_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class PhrasesCubit extends Cubit<PhrasesState> {
  PhrasesCubit(
    this._currentWordRepository,
  ) : super(const PhrasesState(dailyPhrases: [], textForDisplay: [])) {
    unawaited(getDailyPhrases());
  }

  final DailyRepository _currentWordRepository;

  Future<void> getDailyPhrases() async {
    final phrases = await _currentWordRepository.getDailyPhrases();
    final text = <String>[phrases.first.byAnotherWords, '', ''];
    emit(
      PhrasesState(
        dailyPhrases: phrases,
        textForDisplay: text,
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
      sentenceBySmallParts[1] =
          ' $phrase '; // ' applied for ' <- will bold on screen
      sentenceBySmallParts[2] = partAfterPhrase; // 'that job'
    }

    return sentenceBySmallParts;
  }

  void nextPhrase() {
    var curIndex = state.currentIndex;
    if (state.isCurrentPhraseLast) {
      return;
    } else {
      curIndex = curIndex + 1;
    }
    emit(state.copyWith(indexCurrenPhrase: curIndex, sentenceDisplayed: false));
    _changeTextForDisplay();
  }

  void prevPhrase() {
    var curIndex = state.currentIndex;
    if (state.isCurrentPhraseFirst) {
      return;
    } else {
      curIndex = curIndex - 1;
    }
    emit(state.copyWith(indexCurrenPhrase: curIndex, sentenceDisplayed: false));
    _changeTextForDisplay();
  }

  void _changeTextForDisplay() {
    var res = state.textForDisplay;
    if (state.sentenceDisplayed) {
      if (state.displayInEnglish) {
        res = _breakStringOnParts(
          state.currentPhrase.sentence,
          state.currentPhrase.phrase,
        );
      } else {
        res = <String>[state.currentPhrase.sentenceTranslation, '', ''];
      }
    } else {
      if (state.displayInEnglish) {
        res = <String>[state.currentPhrase.byAnotherWords, '', ''];
      } else {
        res = <String>[state.currentPhrase.byAnotherWordsTranslation, '', ''];
      }
    }

    emit(state.copyWith(textForDisplay: res));
  }

  void changeLanguage() {
    emit(state.copyWith(displayInEnglish: !state.displayInEnglish));
    _changeTextForDisplay();
  }

  void changePhraseView() {
    emit(state.copyWith(sentenceDisplayed: !state.sentenceDisplayed));
    _changeTextForDisplay();
  }

  String getProgressText() {
    final res = '${state.currentIndex}/10';
    return res;
  }

  void goToTest(BuildContext context, int variant) {
    //
  }

  void backToStart(BuildContext context) {
    context.go('/');
  }
}
