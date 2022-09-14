import 'package:english_for_it/features/phrases_screen/cubit/phrases_cubit.dart';
import 'package:english_for_it/features/phrases_screen/cubit/phrases_state.dart';
import 'package:english_for_it/features/phrases_screen/widgets/flag_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/next_phrase_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/previous_phrase_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/speak_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhraseCard extends StatelessWidget {
  const PhraseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PhrasesCubit>().changePhraseView();
      },
      child: Card(
        elevation: 4,
        child: BlocBuilder<PhrasesCubit, PhrasesState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.isLoading)
                  const Text('Loading')
                else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlagButton(
                        pState: state,
                      ),
                      SpeakButton(phrase: state.textForDisplay.toString()),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: state.displayInEnglish && state.sentenceDisplayed
                          ? RichText(
                              maxLines: 4,
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: state.textForDisplay[0],
                                style: Theme.of(context).textTheme.headline3,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: state.textForDisplay[1],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: state.textForDisplay[2],
                                  ),
                                ],
                              ),
                            )
                          : Text(
                              state.textForDisplay[0],
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        PreviousPhraseButton(
                          phrasesState: state,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        NextPhraseButton(
                          phrasesState: state,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
