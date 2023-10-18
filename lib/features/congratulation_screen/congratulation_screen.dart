import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:confetti/confetti.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/start_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({required this.numberOfWrongAnswers, super.key});

  final int numberOfWrongAnswers;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StartCubit>(),
      child: CongratulationScreenView(
        numberOfWrongAnswers: numberOfWrongAnswers,
      ),
    );
  }
}

class CongratulationScreenView extends StatefulWidget {
  const CongratulationScreenView({
    required this.numberOfWrongAnswers,
    super.key,
  });

  final int numberOfWrongAnswers;

  @override
  State<CongratulationScreenView> createState() =>
      _CongratulationScreenViewState();
}

class _CongratulationScreenViewState extends State<CongratulationScreenView> {
  late ConfettiController controller;
  late bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    controller = ConfettiController(duration: const Duration(seconds: 2));
    controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  //context.go('/');
                  context.read<StartCubit>().goToStart();
                },
                icon: const Icon(
                  Icons.home,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Congratulation! You passed the test!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    '''${widget.numberOfWrongAnswers} times you answered incorrectly''',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  if (widget.numberOfWrongAnswers > 3)
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Maybe you need to go over the words again?',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.read<StartCubit>().goToStart();
                          },
                          child: const Text(
                            'back to learning',
                          ),
                        ),
                      ],
                    )
                  else
                    Text(
                      'Great job!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                ],
              ),
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: controller,
          blastDirection: pi / 2,
          blastDirectionality: BlastDirectionality.explosive,
          emissionFrequency: 0.3,
          gravity: 0.1,
          createParticlePath: (size) {
            final path = Path();
            // ignore: cascade_invocations
            path.addOval(
              Rect.fromCircle(
                center: Offset.zero,
                radius: 8,
              ),
            );
            return path;
          },
        ),
      ],
    );
  }
}
