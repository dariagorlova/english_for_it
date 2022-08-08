import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LearningCubit>(),
      child: const LearningView(),
    );
  }
}

class LearningView extends StatelessWidget {
  const LearningView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Words for Today'),
      ),
      body: const SafeArea(
        child: Center(
          child: SizedBox(
            height: 300, // ! make with MediaQuery!
            child: Padding(
              padding: EdgeInsets.all(15),
              child: WordCard(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('TEST'),
        onPressed: () {
          context.read<LearningCubit>().goToTest(context);
        },
      ),
    );
  }
}

class WordCard extends StatelessWidget {
  const WordCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: BlocBuilder<LearningCubit, LearningState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (state.isLoading)
                const SizedBox()
              else ...[
                Expanded(
                  child: Container(
                    foregroundDecoration: state.isCurrentWordFirst
                        ? BoxDecoration(
                            color: Theme.of(context).errorColor,
                            backgroundBlendMode: BlendMode.lighten,
                          )
                        : null,
                    child: InkWell(
                      onTap: state.isLoading
                          ? null
                          : () => context.read<LearningCubit>().prevWord(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state.isLoading)
                    const Text('Loading')
                  else ...[
                    Text(
                      state.currentWord
                          .word, //state.currentWord.wordPair.wordEN, //'developer',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const Divider(),
                    Text(
                      state.currentWord
                          .translate, //state.currentWord.wordPair.wordUA, //'розробник',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ]
                ],
              ),
              if (state.isLoading)
                const SizedBox()
              else ...[
                Expanded(
                  child: Container(
                    foregroundDecoration: state.isCurrentWordLast
                        ? BoxDecoration(
                            color: Theme.of(context).errorColor,
                            backgroundBlendMode: BlendMode.lighten,
                          )
                        : null,
                    child: InkWell(
                      onTap: state.isLoading
                          ? null
                          : () => context.read<LearningCubit>().nextWord(),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 50,
                      ),
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
