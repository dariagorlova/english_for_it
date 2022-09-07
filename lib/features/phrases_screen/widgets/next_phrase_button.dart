import 'package:flutter/material.dart';

class NextPhraseButton extends StatelessWidget {
  const NextPhraseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        foregroundDecoration: BoxDecoration(
          color: Theme.of(context).errorColor,
          backgroundBlendMode: BlendMode.lighten,
        ),
        // foregroundDecoration: state.isCurrentPhraseFirst
        //     ? BoxDecoration(
        //         color: Theme.of(context).errorColor,
        //         backgroundBlendMode: BlendMode.lighten,
        //       )
        //     : null,
        child: InkWell(
          onTap: () {},
          // onTap: state.isLoading
          //     ? null
          //     : () => context.read<LearningCubit>().nextPhrase(),
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 40,
          ),
        ),
      ),
    );
  }
}
