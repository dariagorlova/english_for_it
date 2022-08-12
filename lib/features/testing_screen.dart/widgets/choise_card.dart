import 'package:english_for_it/features/testing_screen.dart/cubit/testing_cubit.dart';
import 'package:english_for_it/features/testing_screen.dart/cubit/testing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoiseCard extends StatelessWidget {
  const ChoiseCard({
    required this.number,
    required this.title,
    super.key,
  });

  final String title;
  final int number;

  @override
  Widget build(BuildContext context) {
    return CardView(number: number, title: title);
  }
}

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    required this.number,
    required this.title,
  });

  final int number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: InkWell(
        onTap: () {
          context.read<TestingCubit>().checkChoise(number, context);
          //if (res) context.read<TestingCubit>().endTest(context);
        },
        child: Card(
          elevation: 4,
          child: BlocSelector<TestingCubit, TestingState, bool>(
            selector: (state) => state.isAnswerTried(number),
            builder: (context, isAnswerTried) => Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35, //isAnswerTried ? 30 : 40,
                color: isAnswerTried
                    ? Theme.of(context).errorColor
                    : Theme.of(context).primaryColor,
              ),
              //style: Theme.of(context).textTheme.headline4,
            ),
            //),
          ),
        ),
      ),
    );
  }
}
