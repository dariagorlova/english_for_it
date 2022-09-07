import 'package:english_for_it/features/phrases_screen/widgets/flag_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/next_phrase_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/previous_phrase_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/speak_button.dart';
import 'package:flutter/material.dart';

class PhraseCard extends StatelessWidget {
  const PhraseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //if (state.isLoading)
          //  const Text('Loading')
          //else ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              FlagButton(),
              SpeakButton(),
            ],
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'many different', //state.currentWord.word,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Row(
            children: const [
              PreviousPhraseButton(),
              NextPhraseButton(),
            ],
          ),
        ],
      ),
    );
  }
}
