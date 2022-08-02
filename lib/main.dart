import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/learning_screen/learning_screen.dart';
import 'package:english_for_it/features/start_screen/start_screen.dart';
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
    //this.initialization,
  });

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'English for IT',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: GoogleFonts.courgetteTextTheme(),
          backgroundColor: const Color.fromARGB(255, 242, 211, 248),
          errorColor: Colors.grey,
        ),
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );

  final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/learning',
        builder: (context, state) => const LearningScreen(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const StartScreen(),
      ),
    ],
  );
}
