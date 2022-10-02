import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_cubit.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreviousPhraseButton extends StatelessWidget {
  const PreviousPhraseButton({
    super.key,
    required this.phrasesState,
  });

  final PhrasesState phrasesState;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).canvasColor,
          boxShadow: [
            BoxShadow(color: Theme.of(context).dividerColor, spreadRadius: 3),
          ],
        ),
        foregroundDecoration: phrasesState.isCurrentPhraseFirst
            ? BoxDecoration(
                color: Theme.of(context).colorScheme.error,
                backgroundBlendMode: BlendMode.lighten,
              )
            : null,
        child: InkWell(
          onTap: phrasesState.isLoading
              ? null
              : () => context.read<PhrasesCubit>().prevPhrase(),
          child: const Padding(
            padding: EdgeInsets.all(4),
            child: Icon(
              Icons.arrow_back_ios,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
