import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/word_with_answers.dart';
import 'package:english_for_it/core/service/navigator.dart';
import 'package:english_for_it/features/words/make_pair_screen/cubit/pairs_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PairsCubit extends Cubit<PairsState> {
  PairsCubit(
    @factoryParam List<OneWord> words,
    this._router,
  ) : super(
          const PairsState(),
        ) {
    init(words);
  }

  final EnglishNavigator _router;

  void init(List<OneWord> dailyWords) {
    if (dailyWords.isEmpty) return;

    final leftList = <WordWithState>[];
    dailyWords
        .map(
          (w) => leftList.add(
            WordWithState(
              word: w,
            ),
          ),
        )
        .toList();
    leftList.shuffle();

    final rightList = <WordWithState>[];
    dailyWords
        .map(
          (w) => rightList.add(
            WordWithState(
              word: w,
            ),
          ),
        )
        .toList();
    rightList.shuffle();

    emit(
      PairsState(
        wordsOnTheLeft: leftList,
        wordsOnTheRight: rightList,
      ),
    );
  }

  Color getColorCardByIndex(int index, int numCol) {
    final wordState = numCol == 0 ? state.stateOfWordInEN(index) : state.stateOfWordInUA(index);
    switch (wordState) {
      case WordState.checking:
        return Colors.blue.shade200;
      case WordState.correctly:
        return Colors.green.shade300;
      case WordState.wrong:
        return Colors.red.shade300;
      case WordState.initial:
        return Colors.white;
    }
  }

  void checkPair(int index, int numCol) {
    final isLeftColumn = numCol == 0;

    final stateOfWord = isLeftColumn ? state.stateOfWordInEN(index) : state.stateOfWordInUA(index);

    if (stateOfWord == WordState.correctly) {
      return;
    }

    // word which we tap on screen
    final word =
        isLeftColumn ? state.wordInENColumn(index).word : state.wordInUAColumn(index).translate;
    if (state.isPairEmpty) {
      addFirstPartOfPair(word, index, numCol);
    } else {
      if (isWordsInPairInSameColumn(numCol)) {
        updateFirstPartOfPair(word, index);
      } else {
        // translation for word which we tap on screen
        final translation =
            isLeftColumn ? state.wordInENColumn(index).translate : state.wordInUAColumn(index).word;
        if (state.curPair.first == translation) {
          foundCorrectPair();
        } else {
          foundWrongPair(index);
        }
      }
    }
  }

  void addFirstPartOfPair(String word, int index, int numCol) {
    final curList = numCol == 0 ? state.leftColumn : state.rightColumn;
    final oppositeList = numCol == 0 ? state.rightColumn : state.leftColumn;
    final listOp = <WordWithState>[];
    for (final w in oppositeList) {
      if (w.state == WordState.wrong) {
        listOp.add(
          WordWithState(
            word: w.word,
          ),
        );
      } else {
        listOp.add(w);
      }
    }

    //final list2 = [...curList]..[index].state = WordState.checking;
    final list2 = <WordWithState>[];
    for (var i = 0; i < curList.length; i++) {
      if (i == index) {
        list2.add(
          WordWithState(
            word: curList[i].word,
            state: WordState.checking,
          ),
        );
      } else {
        if (curList[i].state == WordState.wrong) {
          list2.add(
            WordWithState(
              word: curList[i].word,
            ),
          );
        } else {
          list2.add(curList[i]);
        }
      }
    }

    numCol == 0
        ? emit(
            PairsState(
              wordsOnTheLeft: list2,
              wordsOnTheRight: listOp,
              currentPair: <String>[word],
              isFirstWordInPairInEN: numCol == 0,
              numberOfWrongAttempts: state.numberOfFails,
            ),
          )
        : emit(
            PairsState(
              wordsOnTheRight: list2,
              wordsOnTheLeft: listOp,
              currentPair: <String>[word],
              isFirstWordInPairInEN: numCol == 0,
              numberOfWrongAttempts: state.numberOfFails,
            ),
          );
  }

  void updateFirstPartOfPair(String word, int index) {
    final curList = state.isFirstWordInPairInEN ? state.leftColumn : state.rightColumn;
    //final list2 = [...curList]..[index].state = WordState.checking;
    final oldInd = curList.indexWhere((element) => element.state == WordState.checking);
    final list2 = <WordWithState>[];
    for (var i = 0; i < curList.length; i++) {
      if (i == index) {
        list2.add(
          WordWithState(
            word: curList[i].word,
            state: WordState.checking,
          ),
        );
      } else if (i == oldInd) {
        list2.add(
          WordWithState(
            word: curList[i].word,
          ),
        );
      } else {
        list2.add(curList[i]);
      }
    }
    state.isFirstWordInPairInEN
        ? emit(
            PairsState(
              wordsOnTheLeft: list2,
              wordsOnTheRight: state.wordsOnTheRight,
              currentPair: <String>[word],
              isFirstWordInPairInEN: state.isFirstWordInPairExist,
              numberOfWrongAttempts: state.numberOfFails,
            ),
          )
        : emit(
            PairsState(
              wordsOnTheLeft: state.wordsOnTheLeft,
              wordsOnTheRight: list2,
              currentPair: <String>[word],
              isFirstWordInPairInEN: state.isFirstWordInPairExist,
              numberOfWrongAttempts: state.numberOfFails,
            ),
          );
  }

  bool isWordsInPairInSameColumn(int numCol) {
    if (((numCol == 0) && (state.isWordInEN)) || ((numCol == 1) && (!state.isWordInEN))) {
      return true;
    } else {
      return false;
    }
  }

  void foundCorrectPair() {
    final str1 = state.curPair.first;

    final indexOnLeft = state.leftColumn.indexWhere(
      (element) => element.word.word == str1 || element.word.translate == str1,
    );

    final indexOnRight = state.rightColumn.indexWhere(
      (element) => element.word.word == str1 || element.word.translate == str1,
    );

    final listLeft = <WordWithState>[];
    for (var i = 0; i < state.wordsOnTheLeft.length; i++) {
      if (i == indexOnLeft) {
        listLeft.add(
          WordWithState(
            word: state.wordsOnTheLeft[i].word,
            state: WordState.correctly,
          ),
        );
      } else {
        listLeft.add(state.wordsOnTheLeft[i]);
      }
    }
    final listRight = <WordWithState>[];
    for (var i = 0; i < state.wordsOnTheRight.length; i++) {
      if (i == indexOnRight) {
        listRight.add(
          WordWithState(
            word: state.wordsOnTheRight[i].word,
            state: WordState.correctly,
          ),
        );
      } else {
        listRight.add(state.wordsOnTheRight[i]);
      }
    }

    emit(
      PairsState(
        wordsOnTheLeft: listLeft,
        wordsOnTheRight: listRight,
        currentPair: <String>[],
        numberOfWrongAttempts: state.numberOfFails,
      ),
    );
  }

  void foundWrongPair(int index) {
    final str1 = state.curPair.first;

    var indexOnLeft = state.leftColumn.indexWhere(
      (element) => element.word.word == str1 || element.word.translate == str1,
    );

    var indexOnRight = state.rightColumn.indexWhere(
      (element) => element.word.word == str1 || element.word.translate == str1,
    );

    state.isFirstWordInPairInEN ? indexOnRight = index : indexOnLeft = index;

    final listLeft = <WordWithState>[];
    for (var i = 0; i < state.wordsOnTheLeft.length; i++) {
      if (i == indexOnLeft) {
        listLeft.add(
          WordWithState(
            word: state.wordsOnTheLeft[i].word,
            state: WordState.wrong,
          ),
        );
      } else {
        listLeft.add(state.wordsOnTheLeft[i]);
      }
    }
    final listRight = <WordWithState>[];
    for (var i = 0; i < state.wordsOnTheRight.length; i++) {
      if (i == indexOnRight) {
        listRight.add(
          WordWithState(
            word: state.wordsOnTheRight[i].word,
            state: WordState.wrong,
          ),
        );
      } else {
        listRight.add(state.wordsOnTheRight[i]);
      }
    }

    var newNumOfFails = state.numberOfFails + 1;
    emit(
      PairsState(
        wordsOnTheLeft: listLeft,
        wordsOnTheRight: listRight,
        currentPair: <String>[],
        numberOfWrongAttempts: newNumOfFails,
      ),
    );
    newNumOfFails = state.numberOfFails;
  }

  void endGame(BuildContext context) {
    // any word in wordsOnTheLeft and wordsOnTheRight has state.tried
    if (state.wordsOnTheLeft.every((element) => element.state == WordState.correctly)) {
      final numberOfFails = state.numberOfFails;
      //context.go('/congratulation?times=$numberOfFails');
      _router.openCongratulationsScreen(numberOfFails);

      emit(
        state.copyWith(
          wordsOnTheLeft: [],
          wordsOnTheRight: [],
          currentPair: [],
          isFirstWordInPairInEN: true,
          numberOfWrongAttempts: 0,
        ),
      );
    }
  }

  void backToLearn() {
    //context.go('/learning');
    _router.openLearningWordsScreen();
  }
}
