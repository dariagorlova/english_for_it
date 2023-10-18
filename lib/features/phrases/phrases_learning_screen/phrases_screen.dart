import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_cubit.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_state.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/phrase_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PhrasesCubit>(),
      child: const PhrasesScreenView(),
    );
  }
}

class PhrasesScreenView extends StatelessWidget {
  const PhrasesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Phrases for Today'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PhrasesCubit>().backToStart();
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
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          //child: Text('1/10'),
          child: BlocSelector<PhrasesCubit, PhrasesState, int>(
            selector: (state) => state.indexCurrenPhrase,
            builder: (context, indexCurrenPhrase) {
              return Text(
                '${indexCurrenPhrase + 1}/10',
              );
            },
          ),
        ),
        SizedBox(
          height: heightScreen * 0.7,
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: PhraseCard(),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            //context.go('/testingPhrases');
            context.read<PhrasesCubit>().goToTest();
          },
          child: Text(
            'Test the learned',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Theme.of(context).cardColor),
          ),
        ),
      ],
    );
  }
}

class HorizontalView extends StatelessWidget {
  const HorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              //child: Text('1/10'),
              child: BlocSelector<PhrasesCubit, PhrasesState, int>(
                selector: (state) => state.indexCurrenPhrase,
                builder: (context, indexCurrenPhrase) {
                  return Text(
                    '${indexCurrenPhrase + 1}/10',
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //context.go('/testingPhrases');
                context.read<PhrasesCubit>().goToTest();
              },
              child: Text(
                'Test the learned',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Theme.of(context).cardColor),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.67,
          child: const Padding(
            padding: EdgeInsets.all(3),
            child: PhraseCard(),
          ),
        ),
      ],
    );
  }
}
