import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_state.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/next_phrase_button.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/previous_phrase_button.dart';
import 'package:flutter/material.dart';

class RowWithButtons extends StatelessWidget {
  const RowWithButtons({
    super.key,
    required this.pState,
  });

  final PhrasesState pState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          PreviousPhraseButton(
            phrasesState: pState,
          ),
          const SizedBox(
            width: 10,
          ),
          NextPhraseButton(
            phrasesState: pState,
          ),
        ],
      ),
    );
  }
}
