import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/testing_screen.dart/cubit/testing_cubit.dart';
import 'package:english_for_it/features/testing_screen.dart/cubit/testing_state.dart';
import 'package:english_for_it/features/testing_screen.dart/widgets/choise_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({
    super.key,
    required this.words,
  });

  final List<OneWord> words;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //create: (_) => getIt<TestingCubit>(),
      create: (_) => getIt<TestingCubit>(param1: words),
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
    final height = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Testing daily words'),
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<TestingCubit, TestingState>(
            builder: (context, state) {
              return Column(
                children: [
                  if (state.isLoading)
                    const Text('Loading')
                  else ...[
                    SizedBox(
                      height: height, //300,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Card(
                          elevation: 4,
                          child: Center(
                            child: Text(
                              state.currentWordEN, //'developer',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: height, //300,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: state.currentWordAnswers.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ChoiseCard(
                              number: index,
                              title: state.currentWordAnswers[index],
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
      ),
    );
  }
}
