import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/phrases_screen.dart';
import 'package:english_for_it/features/start_screen/start_screen.dart';
import 'package:english_for_it/features/words/learning_screen/learning_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@lazySingleton
@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(page: StartScreen, initial: true),
    AutoRoute<void>(page: LearningScreen),
    AutoRoute<void>(page: PhrasesScreen),

    // AutoRoute<void>(page: PhrasesTestingScreen),
    // AutoRoute<void>(page: TestingScreen),
    // AutoRoute<void>(page: MakePairScreen),
    // AutoRoute<void>(page: CongratulationScreen),
    // AutoRoute<void>(page: SearchWordScreen),
    // AutoRoute<void>(page: IrregularVerbsScreen),
  ],
)
class AppRouter extends _$AppRouter {}
