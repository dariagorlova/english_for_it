// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    StartRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const StartScreen(),
      );
    },
    LearningRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const LearningScreen(),
      );
    },
    PhrasesRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const PhrasesScreen(),
      );
    },
    PhrasesTestingRoute.name: (routeData) {
      final args = routeData.argsAs<PhrasesTestingRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: PhrasesTestingScreen(
          key: args.key,
          phrases: args.phrases,
        ),
      );
    },
    TestingRoute.name: (routeData) {
      final args = routeData.argsAs<TestingRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: TestingScreen(
          key: args.key,
          words: args.words,
          variantOfTest: args.variantOfTest,
        ),
      );
    },
    MakePairRoute.name: (routeData) {
      final args = routeData.argsAs<MakePairRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: MakePairScreen(
          key: args.key,
          words: args.words,
        ),
      );
    },
    CongratulationRoute.name: (routeData) {
      final args = routeData.argsAs<CongratulationRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: CongratulationScreen(
          numberOfWrongAnswers: args.numberOfWrongAnswers,
          key: args.key,
        ),
      );
    },
    SearchWordRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const SearchWordScreen(),
      );
    },
    IrregularVerbsRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const IrregularVerbsScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          StartRoute.name,
          path: '/',
        ),
        RouteConfig(
          LearningRoute.name,
          path: '/learning-screen',
        ),
        RouteConfig(
          PhrasesRoute.name,
          path: '/phrases-screen',
        ),
        RouteConfig(
          PhrasesTestingRoute.name,
          path: '/phrases-testing-screen',
        ),
        RouteConfig(
          PhrasesTestingRoute.name,
          path: '/phrases-testing-screen',
        ),
        RouteConfig(
          TestingRoute.name,
          path: '/testing-screen',
        ),
        RouteConfig(
          MakePairRoute.name,
          path: '/make-pair-screen',
        ),
        RouteConfig(
          CongratulationRoute.name,
          path: '/congratulation-screen',
        ),
        RouteConfig(
          SearchWordRoute.name,
          path: '/search-word-screen',
        ),
        RouteConfig(
          IrregularVerbsRoute.name,
          path: '/irregular-verbs-screen',
        ),
      ];
}

/// generated route for
/// [StartScreen]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [LearningScreen]
class LearningRoute extends PageRouteInfo<void> {
  const LearningRoute()
      : super(
          LearningRoute.name,
          path: '/learning-screen',
        );

  static const String name = 'LearningRoute';
}

/// generated route for
/// [PhrasesScreen]
class PhrasesRoute extends PageRouteInfo<void> {
  const PhrasesRoute()
      : super(
          PhrasesRoute.name,
          path: '/phrases-screen',
        );

  static const String name = 'PhrasesRoute';
}

/// generated route for
/// [PhrasesTestingScreen]
class PhrasesTestingRoute extends PageRouteInfo<PhrasesTestingRouteArgs> {
  PhrasesTestingRoute({
    Key? key,
    required List<Phrase> phrases,
  }) : super(
          PhrasesTestingRoute.name,
          path: '/phrases-testing-screen',
          args: PhrasesTestingRouteArgs(
            key: key,
            phrases: phrases,
          ),
        );

  static const String name = 'PhrasesTestingRoute';
}

class PhrasesTestingRouteArgs {
  const PhrasesTestingRouteArgs({
    this.key,
    required this.phrases,
  });

  final Key? key;

  final List<Phrase> phrases;

  @override
  String toString() {
    return 'PhrasesTestingRouteArgs{key: $key, phrases: $phrases}';
  }
}

/// generated route for
/// [TestingScreen]
class TestingRoute extends PageRouteInfo<TestingRouteArgs> {
  TestingRoute({
    Key? key,
    required List<OneWord> words,
    required int variantOfTest,
  }) : super(
          TestingRoute.name,
          path: '/testing-screen',
          args: TestingRouteArgs(
            key: key,
            words: words,
            variantOfTest: variantOfTest,
          ),
        );

  static const String name = 'TestingRoute';
}

class TestingRouteArgs {
  const TestingRouteArgs({
    this.key,
    required this.words,
    required this.variantOfTest,
  });

  final Key? key;

  final List<OneWord> words;

  final int variantOfTest;

  @override
  String toString() {
    return 'TestingRouteArgs{key: $key, words: $words, variantOfTest: $variantOfTest}';
  }
}

/// generated route for
/// [MakePairScreen]
class MakePairRoute extends PageRouteInfo<MakePairRouteArgs> {
  MakePairRoute({
    Key? key,
    required List<OneWord> words,
  }) : super(
          MakePairRoute.name,
          path: '/make-pair-screen',
          args: MakePairRouteArgs(
            key: key,
            words: words,
          ),
        );

  static const String name = 'MakePairRoute';
}

class MakePairRouteArgs {
  const MakePairRouteArgs({
    this.key,
    required this.words,
  });

  final Key? key;

  final List<OneWord> words;

  @override
  String toString() {
    return 'MakePairRouteArgs{key: $key, words: $words}';
  }
}

/// generated route for
/// [CongratulationScreen]
class CongratulationRoute extends PageRouteInfo<CongratulationRouteArgs> {
  CongratulationRoute({
    required int numberOfWrongAnswers,
    Key? key,
  }) : super(
          CongratulationRoute.name,
          path: '/congratulation-screen',
          args: CongratulationRouteArgs(
            numberOfWrongAnswers: numberOfWrongAnswers,
            key: key,
          ),
        );

  static const String name = 'CongratulationRoute';
}

class CongratulationRouteArgs {
  const CongratulationRouteArgs({
    required this.numberOfWrongAnswers,
    this.key,
  });

  final int numberOfWrongAnswers;

  final Key? key;

  @override
  String toString() {
    return 'CongratulationRouteArgs{numberOfWrongAnswers: $numberOfWrongAnswers, key: $key}';
  }
}

/// generated route for
/// [SearchWordScreen]
class SearchWordRoute extends PageRouteInfo<void> {
  const SearchWordRoute()
      : super(
          SearchWordRoute.name,
          path: '/search-word-screen',
        );

  static const String name = 'SearchWordRoute';
}

/// generated route for
/// [IrregularVerbsScreen]
class IrregularVerbsRoute extends PageRouteInfo<void> {
  const IrregularVerbsRoute()
      : super(
          IrregularVerbsRoute.name,
          path: '/irregular-verbs-screen',
        );

  static const String name = 'IrregularVerbsRoute';
}
