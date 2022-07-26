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
      appBar: AppBar(
        title: const Text('Words for Today'),
      ),
      body: const SafeArea(
        child: Center(
          child: SizedBox(
            height: 300, // ! make with MediaQuery!
            child: WordCard(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('TEST'),
        onPressed: () {
          //context.read<LearningCubit>().goToTest();
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
    return BlocBuilder<LearningCubit, LearningState>(
      builder: (context, state) {
        return Card(
          elevation: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: const Icon(Icons.arrow_back_ios),
                onTap: () {
                  context.read<LearningCubit>().prevWord();
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.currentWord.word, //'developer',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const Divider(),
                  Text(
                    state.currentWord.translate, //'розробник',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              InkWell(
                child: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.read<LearningCubit>().nextWord();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
