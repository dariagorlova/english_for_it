import 'dart:io';

import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_cubit.dart';
import 'package:english_for_it/features/learning_screen/cubit/learning_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LearningCubit>(),
      child: const LearningView(),
    );
  }
}

class LearningView extends StatelessWidget {
  const LearningView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Words for Today'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<LearningCubit>().backToStart(context);
            },
            icon: const Icon(
              Icons.menu_book,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: WordCard(),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  context.read<LearningCubit>().goToTest(context, 0);
                },
                child: const Text('Translate EN to UA'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<LearningCubit>().goToTest(context, 1);
                },
                child: const Text('Translate UA to EN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WordCard extends StatefulWidget {
  const WordCard({
    super.key,
  });

  @override
  State<WordCard> createState() => _WordCardState();
}

enum TtsState { playing, stopped }

class _WordCardState extends State<WordCard> {
  late FlutterTts flutterTts;
  TtsState ttsState = TtsState.stopped;
  double volume = 0.5;
  double pitch = 1;
  double rate = 0.5;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    initSpeak();
  }

  void initSpeak() {
    flutterTts
      ..setStartHandler(() {
        setState(() {
          ttsState = TtsState.playing;
        });
      })
      ..setCompletionHandler(() {
        setState(() {
          ttsState = TtsState.stopped;
        });
      })
      ..setErrorHandler((msg) {
        setState(() {
          ttsState = TtsState.stopped;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }

  Future<void> _speak(String text) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    final result = await flutterTts.speak(text);
    if (result == 1) setState(() => ttsState = TtsState.playing);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: BlocBuilder<LearningCubit, LearningState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (state.isLoading)
                const SizedBox()
              else ...[
                Expanded(
                  child: Container(
                    foregroundDecoration: state.isCurrentWordFirst
                        ? BoxDecoration(
                            color: Theme.of(context).errorColor,
                            backgroundBlendMode: BlendMode.lighten,
                          )
                        : null,
                    child: InkWell(
                      onTap: state.isLoading
                          ? null
                          : () => context.read<LearningCubit>().prevWord(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state.isLoading)
                    const Text('Loading')
                  else ...[
                    Row(
                      children: [
                        Text(
                          state.currentWord.word, //'developer',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        IconButton(
                          icon: const Icon(Icons.volume_up),
                          iconSize: 40,
                          color: Colors.green,
                          splashColor: Colors.greenAccent,
                          onPressed: () {
                            // context.read<LearningCubit>().playSound();
                            _speak(state.currentWord.word);
                          },
                        ),
                      ],
                    ),
                    const Divider(),
                    Text(
                      state.currentWord.translate, //'розробник',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ]
                ],
              ),
              if (state.isLoading)
                const SizedBox()
              else ...[
                Expanded(
                  child: Container(
                    foregroundDecoration: state.isCurrentWordLast
                        ? BoxDecoration(
                            color: Theme.of(context).errorColor,
                            backgroundBlendMode: BlendMode.lighten,
                          )
                        : null,
                    child: InkWell(
                      onTap: state.isLoading
                          ? null
                          : () => context.read<LearningCubit>().nextWord(),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
