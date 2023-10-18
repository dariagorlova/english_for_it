import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/phrases/phrases_testing_screen/cubit/phrases_testing_cubit.dart';
import 'package:english_for_it/features/phrases/phrases_testing_screen/cubit/phrases_testing_state.dart';
import 'package:english_for_it/features/phrases/phrases_testing_screen/widgets/phrase_choise_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PhrasesTestingScreen extends StatelessWidget {
  const PhrasesTestingScreen({
    super.key,
    required this.phrases,
  });

  final List<Phrase> phrases;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PhrasesTestingCubit>(param1: phrases),
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
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Testing daily phrases'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PhrasesTestingCubit>().backToLearn(context);
            },
            icon: const Icon(
              Icons.menu_book,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: BlocBuilder<PhrasesTestingCubit, PhrasesTestingState>(
              builder: (context, state) {
                return Column(
                  children: [
                    if (state.isLoading)
                      const Text('Loading')
                    else ...[
                      SizedBox(
                        height: height * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Card(
                            elevation: 4,
                            child: Center(
                              child: Text(
                                state.currentPhrase,
                                style: Theme.of(context).textTheme.displaySmall,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //const Spacer(),
                      SizedBox(
                        height: height * 1.25,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: ListView.builder(
                            itemCount: state.currentPhraseAnswers.length,
                            itemBuilder: (BuildContext context, int index) {
                              return PhraseChoiseCard(
                                height: height * 1.25 / 5,
                                number: index,
                                title: state.currentPhraseAnswers[index],
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
      ),
    );
  }
}
