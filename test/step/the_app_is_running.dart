import 'package:english_for_it/di/injection.dart' as di;
import 'package:english_for_it/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';

import '../utils/mock_google_translator.dart';
import '../utils/mock_repository.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  //await tester.pumpWidget(const MyApp());
  await di.getIt.reset();
  di.configureInjection(Environment.test);
  await tester.pumpWidget(MyApp());
  await tester.pumpAndSettle();

  di.getIt
    ..allowReassignment = true
    ..registerFactory<int>(() => 0, instanceName: 'seed')
    ..registerSingleton(getWordsRepository())
    ..registerSingleton(getGoogleTranslator())
    ..allowReassignment = false;
}
