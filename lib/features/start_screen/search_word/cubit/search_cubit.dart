import 'dart:async';
import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:english_for_it/core/service/navigator.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this._currentWordRepository,
    this._router,
  ) : super(
          const SearchState(),
        ) {
    unawaited(getAllWords());
  }

  final Repository _currentWordRepository;
  final EnglishNavigator _router;

  Future<void> getAllWords() async {
    final words = await _currentWordRepository.getAllWords();
    emit(
      SearchState(
        words: words,
      ),
    );
  }

  String translate(String word) {
    for (final w in state.words) {
      if (w.word.contains(word)) {
        return w.translate;
      }
    }
    return '';
  }

  Future<void> goToStart() async {
    _router.startApp();
  }

  // Future<void> goLearnWords() async {
  //   await _router.openLearningWordsScreen();
  // }

  // Future<void> goLearnPhrases() async {
  //   await _router.openLearningPhrasesScreen();
  // }

  // Future<void> goSearchWord() async {
  //   await _router.openSearchWordScreen();
  //   _router.pop();
  // }

  // Future<void> goToIrregularVerbs() async {
  //   await _router.openIrregularVerbsScreen();
  //   _router.pop();
  // }
}
