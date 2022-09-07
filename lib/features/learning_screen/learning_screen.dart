import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/features/learning_screen/widgets/test_program_button.dart';
import 'package:english_for_it/features/learning_screen/widgets/word_card.dart';
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
        actions: [
          IconButton(
            onPressed: () {
              context.read<LearningCubit>().backToStart(context);
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: WordCard(),
                ),
              ),
              const Spacer(),
              const TestProgramButton(title: 'Translate EN to UA', index: 0),
              const TestProgramButton(title: 'Translate UA to EN', index: 1),
              const TestProgramButton(title: 'Make pairs', index: 2),
            ],
          ),
        ),
      ),
    );
  }
}
