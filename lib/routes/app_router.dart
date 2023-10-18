import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/features/congratulation_screen/congratulation_screen.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/phrases_screen.dart';
import 'package:english_for_it/features/phrases/phrases_testing_screen/phrases_testing_screen.dart';
import 'package:english_for_it/features/start_screen/irregular_verbs_screen.dart';
import 'package:english_for_it/features/start_screen/search_word/search_word_screen.dart';
import 'package:english_for_it/features/start_screen/start_screen.dart';
import 'package:english_for_it/features/words/learning_screen/learning_screen.dart';
import 'package:english_for_it/features/words/make_pair_screen/make_pair_screen.dart';
import 'package:english_for_it/features/words/testing_screen.dart/testing_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@lazySingleton
// @MaterialAutoRouter(
//   replaceInRouteName: 'Screen,Route',
//   routes: <AutoRoute>[
//     AutoRoute<void>(page: StartScreen, initial: true),
//     AutoRoute<void>(page: LearningScreen),
//     AutoRoute<void>(page: PhrasesScreen),
//     AutoRoute<void>(page: PhrasesTestingScreen),
//     AutoRoute<void>(page: PhrasesTestingScreen),
//     AutoRoute<void>(page: TestingScreen),
//     AutoRoute<void>(page: MakePairScreen),
//     AutoRoute<void>(page: CongratulationScreen),
//     AutoRoute<void>(page: SearchWordScreen),
//     AutoRoute<void>(page: IrregularVerbsScreen),
//   ],
// )
// class AppRouter extends _$AppRouter {}
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: StartRoute.page, initial: true),
        AutoRoute(page: LearningRoute.page),
        AutoRoute(page: PhrasesRoute.page),
        AutoRoute(page: PhrasesTestingRoute.page),
        AutoRoute(page: TestingRoute.page),
        AutoRoute(page: MakePairRoute.page),
        AutoRoute(page: CongratulationRoute.page),
        AutoRoute(page: SearchWordRoute.page),
        AutoRoute(page: IrregularVerbsRoute.page),
      ];
}
