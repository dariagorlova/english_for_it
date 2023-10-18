import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/words/make_pair_screen/cubit/pairs_cubit.dart';
import 'package:english_for_it/features/words/make_pair_screen/cubit/pairs_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MakePairScreen extends StatelessWidget {
  const MakePairScreen({super.key, required this.words});

  final List<OneWord> words;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PairsCubit>(
        param1: words,
      ),
      child: const MakePairsView(),
    );
  }
}

class MakePairsView extends StatelessWidget {
  const MakePairsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final columnHeight = MediaQuery.of(context).size.height;
    //final columnWidth = MediaQuery.of(context).size.width;
    //print('h: $columnHeight, w: $columnWidth');
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Make pairs'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PairsCubit>().backToLearn();
            },
            icon: const Icon(
              Icons.menu_book,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<PairsCubit, PairsState>(
          builder: (context, state) {
            return MediaQuery.of(context).size.width > 1000 // WebApp
                ? VerticalView(pState: state)
                : MediaQuery.of(context).orientation == Orientation.portrait
                    ? VerticalView(pState: state)
                    : HorizontalView(pState: state);
          },
        ),
      ),
    );
  }
}

class VerticalView extends StatelessWidget {
  const VerticalView({
    super.key,
    required this.pState,
  });

  final PairsState pState;

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;
    if (widthScreen > 1000) {
      // WebApp
      widthScreen = 410;
    }
    final columnHeight = heightScreen - 30;
    final columnWidth = widthScreen / 2;
    final textHeight =
        heightScreen > widthScreen ? heightScreen / 36 : widthScreen / 36;
    //print('height: $columnHeight, weidth: $columnWidth');
    return Row(
      children: [
        if (pState.isLoading)
          const Text('Loading')
        else ...[
          SizedBox(
            height: columnHeight,
            width: columnWidth,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: pState.wordsOnTheLeft.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      context.read<PairsCubit>().checkPair(index, 0);
                      context.read<PairsCubit>().endGame(context);
                    },
                    child: SizedBox(
                      height: columnHeight / 12,
                      child: Card(
                        elevation: 4,
                        color: context.read<PairsCubit>().getColorCardByIndex(
                              index,
                              0,
                            ),
                        child: Center(
                          child: Text(
                            pState.wordInENColumn(index).word,
                            style: TextStyle(
                              fontSize: textHeight,
                            ), //Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: columnHeight,
            width: columnWidth,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: pState.wordsOnTheRight.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      context.read<PairsCubit>().checkPair(index, 1);
                      context.read<PairsCubit>().endGame(context);
                    },
                    child: SizedBox(
                      height: columnHeight / 12,
                      child: Card(
                        elevation: 4,
                        color: context.read<PairsCubit>().getColorCardByIndex(
                              index,
                              1,
                            ),
                        child: Center(
                          child: Text(
                            pState.wordInUAColumn(index).translate,
                            style: TextStyle(
                              fontSize: textHeight,
                            ), //Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class HorizontalView extends StatelessWidget {
  const HorizontalView({super.key, required this.pState});

  final PairsState pState;

  @override
  Widget build(BuildContext context) {
    //print(
    //    'height: ${MediaQuery.of(context).size.height},
    //     width: ${MediaQuery.of(context).size.width}');
    final columnHeight = MediaQuery.of(context).size.height - 80;
    final columnWidth = MediaQuery.of(context).size.width / 4.6;
    final textHeight =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? MediaQuery.of(context).size.height / 36
            : MediaQuery.of(context).size.width / 36;

    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              // color: Colors.red,
              height: columnHeight,
              width: columnWidth,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListView.builder(
                  padding: const EdgeInsets.all(5),
                  itemCount: 5, //pState.wordsOnTheLeft.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        context.read<PairsCubit>().checkPair(index, 0);
                        context.read<PairsCubit>().endGame(context);
                      },
                      child: SizedBox(
                        height: (columnHeight - 60) / 5,
                        child: Card(
                          elevation: 4,
                          color: context.read<PairsCubit>().getColorCardByIndex(
                                index,
                                0,
                              ),
                          child: Center(
                            child: Text(
                              pState.wordInENColumn(index).word,
                              style: TextStyle(
                                fontSize: textHeight,
                              ), //Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              //color: Colors.green,
              height: columnHeight,
              width: columnWidth,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListView.builder(
                  padding: const EdgeInsets.all(5),
                  itemCount: 5, //pState.wordsOnTheRight.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        context.read<PairsCubit>().checkPair(index, 1);
                        context.read<PairsCubit>().endGame(context);
                      },
                      child: SizedBox(
                        height: (columnHeight - 60) / 5,
                        child: Card(
                          elevation: 4,
                          color: context.read<PairsCubit>().getColorCardByIndex(
                                index,
                                1,
                              ),
                          child: Center(
                            child: Text(
                              pState.wordInUAColumn(index).translate,
                              style: TextStyle(
                                fontSize: textHeight,
                              ), //Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: columnHeight,
              width: columnWidth,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 5, //pState.wordsOnTheLeft.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        context.read<PairsCubit>().checkPair(index + 5, 0);
                        context.read<PairsCubit>().endGame(context);
                      },
                      child: SizedBox(
                        height: columnHeight / 7,
                        child: Card(
                          elevation: 4,
                          color: context.read<PairsCubit>().getColorCardByIndex(
                                index + 5,
                                0,
                              ),
                          child: Center(
                            child: Text(
                              pState.wordInENColumn(index + 5).word,
                              style: TextStyle(
                                fontSize: textHeight,
                              ), //Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: columnHeight,
              width: columnWidth,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 5, //pState.wordsOnTheRight.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        context.read<PairsCubit>().checkPair(index + 5, 1);
                        context.read<PairsCubit>().endGame(context);
                      },
                      child: SizedBox(
                        height: columnHeight / 7,
                        child: Card(
                          elevation: 4,
                          color: context.read<PairsCubit>().getColorCardByIndex(
                                index + 5,
                                1,
                              ),
                          child: Center(
                            child: Text(
                              pState.wordInUAColumn(index + 5).translate,
                              style: TextStyle(
                                fontSize: textHeight,
                              ), //Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
