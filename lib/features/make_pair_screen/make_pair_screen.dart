import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/make_pair_screen/cubit/pairs_cubit.dart';
import 'package:english_for_it/features/make_pair_screen/cubit/pairs_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final columnHeight = MediaQuery.of(context).size.height - 30;
    final columnWidth = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Make pairs'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PairsCubit>().backToLearn(context);
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
            return Row(
              children: [
                if (state.isLoading)
                  const Text('Loading')
                else ...[
                  SizedBox(
                    height: columnHeight,
                    width: columnWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: state.wordsOnTheLeft.length,
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
                                color: context
                                    .read<PairsCubit>()
                                    .getColorCardByIndex(
                                      index,
                                      0,
                                    ),
                                child: Center(
                                  child: Text(
                                    state.wordInENColumn(index).word,
                                    style:
                                        Theme.of(context).textTheme.headline5,
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
                        itemCount: state.wordsOnTheRight.length,
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
                                color: context
                                    .read<PairsCubit>()
                                    .getColorCardByIndex(
                                      index,
                                      1,
                                    ),
                                child: Center(
                                  child: Text(
                                    state.wordInUAColumn(index).translate,
                                    style:
                                        Theme.of(context).textTheme.headline5,
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
          },
        ),
      ),
    );
  }
}
