import 'package:english_for_it/di/injection.dart' as di;
import 'package:english_for_it/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import '../utils/mock_repository.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await di.getIt.reset();
  di.configureDependencies(env: Environment.test);
  await tester.pumpWidget(const MyApp());
  await tester.pumpAndSettle();

  di.getIt
    ..allowReassignment = true
    ..registerFactory<int>(() => 0, instanceName: 'seed')
    ..registerFactory<int>(() => 1, instanceName: 'translates_seed')
    ..registerSingleton(getWordsRepository())
    ..allowReassignment = false;
}
