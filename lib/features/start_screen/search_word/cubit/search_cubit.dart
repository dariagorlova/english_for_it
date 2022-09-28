import 'dart:async';

import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this._currentWordRepository,
  ) : super(
          const SearchState(
            words: [],
          ),
        ) {
    unawaited(getAllWords());
  }

  final DailyRepository _currentWordRepository;

  Future<void> getAllWords() async {
    final words = await _currentWordRepository.getAllWords();
    emit(
      SearchState(
        words: words,
      ),
    );
  }

  String translate(String word) {
    // return state.words
    //     .firstWhere(
    //       (element) => element.word == word,
    //       orElse: () => const OneWord(word: '', translate: ''),
    //     )
    //     .translate;

    for (final w in state.words) {
      if (w.word.contains(word)) {
        return w.translate;
      }
    }
    return '';
  }
}
