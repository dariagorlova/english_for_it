// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CongratulationRoute.name: (routeData) {
      final args = routeData.argsAs<CongratulationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CongratulationScreen(
          numberOfWrongAnswers: args.numberOfWrongAnswers,
          key: args.key,
        ),
      );
    },
    IrregularVerbsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IrregularVerbsScreen(),
      );
    },
    LearningRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LearningScreen(),
      );
    },
    MakePairRoute.name: (routeData) {
      final args = routeData.argsAs<MakePairRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MakePairScreen(
          key: args.key,
          words: args.words,
        ),
      );
    },
    PhrasesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhrasesScreen(),
      );
    },
    PhrasesTestingRoute.name: (routeData) {
      final args = routeData.argsAs<PhrasesTestingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PhrasesTestingScreen(
          key: args.key,
          phrases: args.phrases,
        ),
      );
    },
    SearchWordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchWordScreen(),
      );
    },
    StartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StartScreen(),
      );
    },
    TestingRoute.name: (routeData) {
      final args = routeData.argsAs<TestingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TestingScreen(
          key: args.key,
          words: args.words,
          variantOfTest: args.variantOfTest,
        ),
      );
    },
  };
}

/// generated route for
/// [CongratulationScreen]
class CongratulationRoute extends PageRouteInfo<CongratulationRouteArgs> {
  CongratulationRoute({
    required int numberOfWrongAnswers,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CongratulationRoute.name,
          args: CongratulationRouteArgs(
            numberOfWrongAnswers: numberOfWrongAnswers,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CongratulationRoute';

  static const PageInfo<CongratulationRouteArgs> page =
      PageInfo<CongratulationRouteArgs>(name);
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
/// [IrregularVerbsScreen]
class IrregularVerbsRoute extends PageRouteInfo<void> {
  const IrregularVerbsRoute({List<PageRouteInfo>? children})
      : super(
          IrregularVerbsRoute.name,
          initialChildren: children,
        );

  static const String name = 'IrregularVerbsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LearningScreen]
class LearningRoute extends PageRouteInfo<void> {
  const LearningRoute({List<PageRouteInfo>? children})
      : super(
          LearningRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearningRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MakePairScreen]
class MakePairRoute extends PageRouteInfo<MakePairRouteArgs> {
  MakePairRoute({
    Key? key,
    required List<OneWord> words,
    List<PageRouteInfo>? children,
  }) : super(
          MakePairRoute.name,
          args: MakePairRouteArgs(
            key: key,
            words: words,
          ),
          initialChildren: children,
        );

  static const String name = 'MakePairRoute';

  static const PageInfo<MakePairRouteArgs> page =
      PageInfo<MakePairRouteArgs>(name);
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
/// [PhrasesScreen]
class PhrasesRoute extends PageRouteInfo<void> {
  const PhrasesRoute({List<PageRouteInfo>? children})
      : super(
          PhrasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhrasesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhrasesTestingScreen]
class PhrasesTestingRoute extends PageRouteInfo<PhrasesTestingRouteArgs> {
  PhrasesTestingRoute({
    Key? key,
    required List<Phrase> phrases,
    List<PageRouteInfo>? children,
  }) : super(
          PhrasesTestingRoute.name,
          args: PhrasesTestingRouteArgs(
            key: key,
            phrases: phrases,
          ),
          initialChildren: children,
        );

  static const String name = 'PhrasesTestingRoute';

  static const PageInfo<PhrasesTestingRouteArgs> page =
      PageInfo<PhrasesTestingRouteArgs>(name);
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
/// [SearchWordScreen]
class SearchWordRoute extends PageRouteInfo<void> {
  const SearchWordRoute({List<PageRouteInfo>? children})
      : super(
          SearchWordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchWordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StartScreen]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute({List<PageRouteInfo>? children})
      : super(
          StartRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TestingScreen]
class TestingRoute extends PageRouteInfo<TestingRouteArgs> {
  TestingRoute({
    Key? key,
    required List<OneWord> words,
    required int variantOfTest,
    List<PageRouteInfo>? children,
  }) : super(
          TestingRoute.name,
          args: TestingRouteArgs(
            key: key,
            words: words,
            variantOfTest: variantOfTest,
          ),
          initialChildren: children,
        );

  static const String name = 'TestingRoute';

  static const PageInfo<TestingRouteArgs> page =
      PageInfo<TestingRouteArgs>(name);
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
