import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/speak_on_button.dart';
import 'package:english_for_it/features/words/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/features/words/learning_screen/cubit/learning_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WordCard extends StatelessWidget {
  const WordCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    final btnSize = MediaQuery.of(context).orientation == Orientation.portrait
        ? heightScreen / 20
        : widthScreen / 20;
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
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: btnSize, //heightScreen / 20,
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
                      SpeakButton(phrase: state.currentWord.word),
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
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: btnSize, //heightScreen / 20,
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
