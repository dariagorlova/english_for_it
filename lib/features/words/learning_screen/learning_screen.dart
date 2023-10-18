import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/words/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/features/words/learning_screen/cubit/learning_state.dart';
import 'package:english_for_it/features/words/learning_screen/widgets/test_program_button.dart';
import 'package:english_for_it/features/words/learning_screen/widgets/word_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
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
      backgroundColor: Theme.of(context).colorScheme.background,
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
          child: MediaQuery.of(context).size.width > 1000 // WebApp
              ? const VerticalView()
              : MediaQuery.of(context).orientation == Orientation.portrait
                  ? const VerticalView()
                  : const HorizontalView(),
        ),
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          //child: Text('1/10'),
          child: BlocSelector<LearningCubit, LearningState, int>(
            selector: (state) => state.indexCurrentWord,
            builder: (context, indexCurrenWord) {
              return Text(
                '${indexCurrenWord + 1}/10',
              );
            },
          ),
        ),
        SizedBox(
          height: heightScreen * 0.5,
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: WordCard(),
          ),
        ),
        const Spacer(),
        TestProgramButton(
          title: 'Translate EN to UA',
          index: 0,
          buttonWidth: widthScreen / 1.5,
        ),
        TestProgramButton(
          title: 'Translate UA to EN',
          index: 1,
          buttonWidth: widthScreen / 1.5,
        ),
        TestProgramButton(
          title: 'Make pairs',
          index: 2,
          buttonWidth: widthScreen / 1.5,
        ),
      ],
    );
  }
}

class HorizontalView extends StatelessWidget {
  const HorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              //child: Text('1/10'),
              child: BlocSelector<LearningCubit, LearningState, int>(
                selector: (state) => state.indexCurrentWord,
                builder: (context, indexCurrenWord) {
                  return Text(
                    '${indexCurrenWord + 1}/10',
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.7,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: WordCard(),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TestProgramButton(
              title: 'Translate EN to UA',
              index: 0,
              buttonWidth: MediaQuery.of(context).size.width / 3.5,
            ),
            TestProgramButton(
              title: 'Translate UA to EN',
              index: 1,
              buttonWidth: MediaQuery.of(context).size.width / 3.5,
            ),
            TestProgramButton(
              title: 'Make pairs',
              index: 2,
              buttonWidth: MediaQuery.of(context).size.width / 3.5,
            ),
          ],
        ),
      ],
    );
  }
}
