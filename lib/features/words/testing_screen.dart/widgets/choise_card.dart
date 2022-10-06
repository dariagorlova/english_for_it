import 'package:english_for_it/features/words/testing_screen.dart/cubit/testing_cubit.dart';
import 'package:english_for_it/features/words/testing_screen.dart/cubit/testing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoiseCard extends StatelessWidget {
  const ChoiseCard({
    required this.number,
    required this.title,
    super.key,
    required this.width,
  });

  final String title;
  final int number;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: InkWell(
        onTap: () {
          context.read<TestingCubit>().checkChoise(number, context);
        },
        child: Card(
          elevation: 4,
          child: BlocSelector<TestingCubit, TestingState, bool>(
            selector: (state) => state.isAnswerTried(number),
            builder: (context, isAnswerTried) => Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: isAnswerTried
                    ? Theme.of(context).colorScheme.error
                    : Theme.of(context).colorScheme.primary,
              ),
            ),
            //),
          ),
        ),
      ),
    );
  }
}
