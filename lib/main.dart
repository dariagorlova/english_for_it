import 'package:english_for_it/core/domain/shared_prefs_helper.dart';
import 'package:english_for_it/core/model/one_word.dart';
//import 'package:english_for_it/core/service/notification_service.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/congratulation_screen/congratulation_screen.dart';
import 'package:english_for_it/features/learning_screen/learning_screen.dart';
import 'package:english_for_it/features/make_pair_screen/make_pair_screen.dart';
import 'package:english_for_it/features/start_screen/start_screen.dart';
import 'package:english_for_it/features/testing_screen.dart/testing_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

void main() //{
async {
  WidgetsFlutterBinding.ensureInitialized();
  //await FlutterNotification.init(FlutterLocalNotificationsPlugin());
  await SharedPrefs.init();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  @override
  //Widget build(BuildContext context) => FutureBuilder(
  //      future: _initialization,
  //      builder: (context, snapshot) {
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'English for IT',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: GoogleFonts.pattayaTextTheme(),
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
        path: '/makePairs',
        builder: (context, state) => MakePairScreen(
          words: state.extra! as List<OneWord>,
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
