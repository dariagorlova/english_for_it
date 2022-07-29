import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:translator/translator.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LearningCubit>(),
      child: const LearningView(),
    );
    //return const LearningView();
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
              child: WordCard(), //WordCard2(),
            ),
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

class WordCard2 extends StatelessWidget {
  const WordCard2({super.key});

  @override
  Widget build(BuildContext context) {
    const word = OneWord(word: 'developer', translate: 'розробник');

    return Card(
      elevation: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: InkWell(
              child: const Icon(
                Icons.arrow_back_ios,
                size: 50,
              ),
              onTap: () {},
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                word.word, //'developer',
                style: Theme.of(context).textTheme.headline3,
              ),
              const Divider(),
              Text(
                word.translate, //'розробник',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
          Expanded(
            child: InkWell(
              child: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
        ],
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
              Expanded(
                child: InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50,
                  ),
                  onTap: () {
                    context.read<LearningCubit>().prevWord();
                  },
                ),
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
                    // context
                    //     .read<LearningCubit>()
                    //     .translateToUA()
                    //     .toString(),
                    state.currentWord.translate, //'розробник',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              Expanded(
                child: InkWell(
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 50,
                  ),
                  onTap: () {
                    context.read<LearningCubit>().nextWord();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
