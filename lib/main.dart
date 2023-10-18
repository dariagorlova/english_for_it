import 'package:english_for_it/core/domain/shared_prefs_helper.dart';

import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

void main() //{
async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  configureDependencies(env: Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'English for IT',
        theme: ThemeData(
          textTheme: GoogleFonts.pattayaTextTheme(),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                wordSpacing: 2,
                fontStyle: GoogleFonts.courgette().fontStyle,
              ),
            ),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)
              .copyWith(
                background: const Color.fromARGB(255, 242, 211, 248),
              )
              .copyWith(error: Colors.grey),
        ),
        // routeInformationProvider: _router.routeInformationProvider,
        // routeInformationParser: _router.routeInformationParser,
        // routerDelegate: _router.routerDelegate,
        routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
        routerDelegate: getIt<AppRouter>().delegate(),
      );

  // final _router = GoRouter(
  //   routes: <GoRoute>[
  //     GoRoute(
  //       path: '/',
  //       builder: (context, state) => const StartScreen(),
  //     ),
  //     GoRoute(
  //       path: '/learning',
  //       builder: (context, state) => const LearningScreen(),
  //     ),
  //     GoRoute(
  //       path: '/learningPhrases',
  //       builder: (context, state) => const PhrasesScreen(),
  //     ),
  //     GoRoute(
  //       path: '/testingPhrases',
  //       builder: (context, state) => PhrasesTestingScreen(
  //         phrases: state.extra! as List<Phrase>,
  //       ),
  //     ),
  //     GoRoute(
  //       path: '/testing',
  //       builder: (context, state) => TestingScreen(
  //         words: state.extra! as List<OneWord>,
  //         variantOfTest: 0,
  //       ),
  //     ),
  //     GoRoute(
  //       path: '/testingUA',
  //       builder: (context, state) => TestingScreen(
  //         words: state.extra! as List<OneWord>,
  //         variantOfTest: 1,
  //       ),
  //     ),
  //     GoRoute(
  //       path: '/makePairs',
  //       builder: (context, state) => MakePairScreen(
  //         words: state.extra! as List<OneWord>,
  //       ),
  //     ),
  //     GoRoute(
  //       path: '/congratulation',
  //       builder: (context, state) {
  //         final number = state.queryParams['times'];
  //         final num = int.parse(number!);
  //         return CongratulationScreen(
  //           times: num,
  //         );
  //       },
  //     ),
  //     GoRoute(
  //       path: '/searchWord',
  //       builder: (context, state) => const SearchWordScreen(),
  //     ),
  //     GoRoute(
  //       path: '/irregularVerbs',
  //       builder: (context, state) => const IrregularVerbsScreen(),
  //     ),
  //   ],
  // );
}
