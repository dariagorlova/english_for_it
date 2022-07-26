import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/learning_screen/learning_screen.dart';
import 'package:english_for_it/features/start_screen/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    //this.initialization,
  });

  //final Future<GetIt>? initialization;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //late final Future<GetIt> _initialization;

  @override
  void initState() {
    super.initState();
    getIt.pushNewScope();
    //_initialization = widget.initialization ?? configureInjection();
  }

  @override
  void dispose() {
    getIt.popScope();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'English for IT',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: GoogleFonts.courgetteTextTheme(),
        ),
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );

  final GoRouter _router = GoRouter(
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
