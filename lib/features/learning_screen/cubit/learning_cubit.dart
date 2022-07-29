import 'package:english_for_it/core/service/daily_words_repository.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:translator/translator.dart';

@injectable
class LearningCubit extends Cubit<LearningState> {
  LearningCubit(
    this._currentWordRepository,
  ) : super(
          LearningState(
            dailyWords: _currentWordRepository.getDailyWords(),
          ),
        );

  final DailyWordsRepository _currentWordRepository;

  void nextWord() {
    var curIndex = state.currentIndex;
    if (state.isCurrentWordLast) {
      curIndex = 0;
    } else {
      curIndex = curIndex + 1;
    }
    emit(state.copyWith(indexCurrentWord: curIndex));
  }

  void prevWord() {
    var curIndex = state.currentIndex;
    if (state.isCurrentWordFirst) {
      curIndex = state.dailyWords.length;
    } else {
      curIndex = curIndex - 1;
    }
    emit(state.copyWith(indexCurrentWord: curIndex));
  }

  //String getWord() => state.dailyWords[state.indexCurrentWord].word;
  //String getTranslate() => state.dailyWords[state.indexCurrentWord].translate;

  void goToTest() {
    //
  }

  Future<Translation> translateToUA() async {
    final translator = GoogleTranslator();
    final translation = await translator.translate(
      state.currentWord.word,
      from: 'en',
      to: 'ru',
    );

    return translation;
  }
}
