import 'package:english_for_it/features/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_state.dart';
import 'package:english_for_it/features/phrases_screen/widgets/speak_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (state.isLoading)
                      const Text('Loading')
                    else ...[
                      SpeakButton(phrase: <String>[state.currentWord.word]),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Column(
                          children: [
                            Text(
                              state.currentWord.word, //'developer',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            //),
                          ],
                        ),
                      ),
                      const Divider(),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          state.currentWord.translate, //'розробник',
                          style: Theme.of(context).textTheme.headline4,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                  ],
                ),
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
                        size: 40,
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
