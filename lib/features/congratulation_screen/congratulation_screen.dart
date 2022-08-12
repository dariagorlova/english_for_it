import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({required this.times, super.key});

  final int times;

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
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
          backgroundColor: Theme.of(context).backgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Congratulation! You passed the test!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    '${widget.times} times you answered incorrectly',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  if (widget.times > 3)
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Maybe you need to go over the words again?',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.push('/learning');
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
                      style: Theme.of(context).textTheme.headline4,
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
          //shouldLoop: true,
          createParticlePath: (size) {
            final path = Path();
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