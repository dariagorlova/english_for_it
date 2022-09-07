import 'package:flutter/material.dart';

class PreviousPhraseButton extends StatelessWidget {
  const PreviousPhraseButton({
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
        // foregroundDecoration: state.isCurrentWordFirst
        //     ? BoxDecoration(
        //         color: Theme.of(context).errorColor,
        //         backgroundBlendMode: BlendMode.lighten,
        //       )
        //     : null,
        child: InkWell(
          onTap: () {},
          // onTap: state.isLoading
          //     ? null
          //     : () => context.read<LearningCubit>().prevWord(),
          child: const Icon(
            Icons.arrow_back_ios,
            size: 40,
          ),
        ),
      ),
    );
  }
}
