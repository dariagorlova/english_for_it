import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_cubit.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlagButton extends StatelessWidget {
  const FlagButton({
    super.key,
    required this.pState,
  });

  final PhrasesState pState;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: pState.displayInEnglish
          ? Text(
              '🇺🇦',
              style: Theme.of(context).textTheme.headlineSmall,
            )
          : Text(
              '🇺🇸',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
      onPressed: () {
        context.read<PhrasesCubit>().changeLanguage();
      },
    );
  }
}
