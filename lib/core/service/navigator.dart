import 'package:english_for_it/routes/app_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class EnglishNavigator {
  const EnglishNavigator(this._router);

  final AppRouter _router;

  void startApp() => _router.go('/');
  void pop() => _router.pop();

  Future<void> openLearningWordsScreen() => _router.push<void>(LearningRoute());
  Future<void> openLearningPhrasesScreen() =>
      _router.push<void>(PhrasesRoute());
}
