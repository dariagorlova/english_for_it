import 'package:english_for_it/features/phrases/phrases_testing_screen/cubit/phrases_testing_cubit.dart';
import 'package:english_for_it/features/phrases/phrases_testing_screen/cubit/phrases_testing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhraseChoiseCard extends StatelessWidget {
  const PhraseChoiseCard({
    required this.number,
    required this.title,
    super.key,
    required this.height,
  });

  final List<String> title;
  final int number;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, //60,
      child: InkWell(
        onTap: () {
          context.read<PhrasesTestingCubit>().checkChoise(number, context);
        },
        child: Card(
          elevation: 4,
          child: BlocSelector<PhrasesTestingCubit, PhrasesTestingState, bool>(
            selector: (state) => state.isAnswerTried(number),
            builder: (context, isAnswerTried) => Padding(
              padding: const EdgeInsets.all(5),
              // child: Text(
              //   title,
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     fontSize: 23,
              //     color: isAnswerTried
              //         ? Theme.of(context).errorColor
              //         : Theme.of(context).primaryColor,
              //   ),
              // ),
              child: RichText(
                maxLines: 6,
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: title[0],
                  style: TextStyle(
                    fontSize: 23,
                    color: isAnswerTried
                        ? Theme.of(context).errorColor
                        : Theme.of(context).primaryColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: title[1],
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: isAnswerTried
                            ? Theme.of(context).errorColor
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: title[2],
                      style: TextStyle(
                        fontSize: 23,
                        color: isAnswerTried
                            ? Theme.of(context).errorColor
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}