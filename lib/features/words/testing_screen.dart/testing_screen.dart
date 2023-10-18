import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/words/testing_screen.dart/cubit/testing_cubit.dart';
import 'package:english_for_it/features/words/testing_screen.dart/cubit/testing_state.dart';
import 'package:english_for_it/features/words/testing_screen.dart/widgets/choise_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TestingScreen extends StatelessWidget {
  const TestingScreen({
    super.key,
    required this.words,
    required this.variantOfTest,
  });

  final List<OneWord> words;
  final int variantOfTest;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TestingCubit>(param1: words, param2: variantOfTest),
      child: const TestingView(),
    );
  }
}

class TestingView extends StatelessWidget {
  const TestingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Testing daily words'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<TestingCubit>().backToLearn();
            },
            icon: const Icon(
              Icons.menu_book,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: MediaQuery.of(context).size.width > 1000 //WebApp
            ? const VerticalView()
            : MediaQuery.of(context).orientation == Orientation.portrait
                ? const VerticalView()
                : const HorizontalView(),
      ),
    );
  }
}

class VerticalView extends StatelessWidget {
  const VerticalView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;
    if (widthScreen > 1000) {
      // WebApp
      widthScreen = 413;
    }
    final height = heightScreen * 0.4;
    return Center(
      child: BlocBuilder<TestingCubit, TestingState>(
        builder: (context, state) {
          return Column(
            children: [
              if (state.isLoading)
                const Text('Loading')
              else ...[
                SizedBox(
                  height: height,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Card(
                      elevation: 4,
                      child: Center(
                        child: Text(
                          state.currentWordEN, //'developer',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: height,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: state.currentWordAnswers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ChoiseCard(
                          number: index,
                          title: state.currentWordAnswers[index],
                          width: widthScreen * 0.35,
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
    );
  }
}

class HorizontalView extends StatelessWidget {
  const HorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<TestingCubit, TestingState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  if (state.isLoading)
                    const Text('Loading')
                  else ...[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          elevation: 4,
                          child: Center(
                            child: Text(
                              state.currentWordEN, //'developer',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: state.currentWordAnswers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ChoiseCard(
                            number: index,
                            title: state.currentWordAnswers[index],
                            width: MediaQuery.of(context).size.height * 0.3,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
