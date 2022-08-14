import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/congratulation_screen/congratulation_screen.dart';
import 'package:english_for_it/features/learning_screen/learning_screen.dart';
import 'package:english_for_it/features/start_screen/start_screen.dart';
import 'package:english_for_it/features/testing_screen.dart/testing_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'English for IT',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: GoogleFonts.courgetteTextTheme(),
          backgroundColor: const Color.fromARGB(255, 242, 211, 248),
          errorColor: Colors.grey,
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
        ),
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );

  final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const StartScreen(),
      ),
      GoRoute(
        path: '/learning',
        builder: (context, state) => const LearningScreen(),
      ),
      GoRoute(
        path: '/testing',
        builder: (context, state) => TestingScreen(
          words: state.extra! as List<OneWord>,
          variantOfTest: 0,
        ),
      ),
      GoRoute(
        path: '/testingUA',
        builder: (context, state) => TestingScreen(
          words: state.extra! as List<OneWord>,
          variantOfTest: 1,
        ),
      ),
      GoRoute(
        path: '/congratulation',
        builder: (context, state) {
          final number = state.queryParams['times'];
          final num = int.parse(number!);
          return CongratulationScreen(
            times: num,
          );
        },
      ),
    ],
  );
}
