import 'package:english_for_it/core/service/navigator.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/start_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class StartCubit extends Cubit<StartState> {
  StartCubit(
    this._router,
  ) : super(
          const StartState(),
        );

  final EnglishNavigator _router;

  Future<void> goLearnWords() async {
    await _router.openLearningWordsScreen();
  }

  Future<void> goLearnPhrases() async {
    await _router.openLearningPhrasesScreen();
  }

  Future<void> goSearchWord() async {
    await _router.openSearchWordScreen();
    _router.pop();
  }

  Future<void> goToIrregularVerbs() async {
    await _router.openIrregularVerbsScreen();
    _router.pop();
  }

  Future<void> goToStart() async {
    _router.startApp();
  }
}
