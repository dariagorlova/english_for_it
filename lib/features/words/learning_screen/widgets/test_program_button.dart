import 'package:english_for_it/features/words/learning_screen/cubit/learning_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestProgramButton extends StatelessWidget {
  const TestProgramButton({
    super.key,
    required this.title,
    required this.index,
    required this.buttonWidth,
  });

  final String title;
  final int index;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: () {
            context.read<LearningCubit>().goToTest(context, index);
          },
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Theme.of(context).cardColor),
          ),
        ),
      ),
    );
  }
}
