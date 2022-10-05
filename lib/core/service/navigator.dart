import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class EnglishNavigator {
  const EnglishNavigator(this._router);

  final GoRouter _router;

  void startApp() => _router.go('/');
  void pop() => _router.pop();
}
