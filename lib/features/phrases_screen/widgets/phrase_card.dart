import 'dart:math';
import 'package:english_for_it/features/phrases_screen/cubit/phrases_cubit.dart';
import 'package:english_for_it/features/phrases_screen/cubit/phrases_state.dart';
import 'package:english_for_it/features/phrases_screen/widgets/flag_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/next_phrase_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/previous_phrase_button.dart';
import 'package:english_for_it/features/phrases_screen/widgets/speak_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhraseCard extends StatefulWidget {
  const PhraseCard({super.key});

  @override
  State<PhraseCard> createState() => _PhraseCardState();
}

class _PhraseCardState extends State<PhraseCard> {
  late bool _showFrontSide;

  @override
  void initState() {
    super.initState();
    _showFrontSide = true;
  }

  void _switchCard() {
    setState(() {
      _showFrontSide = !_showFrontSide;
      context.read<PhrasesCubit>().changePhraseView();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildFlipAnimation();
  }

  Widget _buildFlipAnimation() {
    return GestureDetector(
      onTap: _switchCard,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 800),
        transitionBuilder: __transitionBuilder,
        layoutBuilder: (widget, list) => Stack(children: [widget!, ...list]),
        switchInCurve: Curves.easeInBack,
        switchOutCurve: Curves.easeInBack.flipped,
        child: _showFrontSide ? _buildFront() : _buildRear(),
      ),
    );
  }

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = ValueKey(_showFrontSide) != widget!.key;
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: (Matrix4.rotationX(value)..setEntry(3, 1, tilt)),
          alignment: Alignment.center,
          child: widget,
        );
      },
    );
  }

  Widget _buildFront() {
    return __buildLayout(
      key: const ValueKey(true),
      child: Card(
        elevation: 4,
        child: BlocBuilder<PhrasesCubit, PhrasesState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.isLoading)
                  const Text('Loading')
                else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlagButton(
                        pState: state,
                      ),
                      SpeakButton(phrase: state.textForDisplay.toString()),
                    ],
                  ),
                  TextForDisplay(
                    pState: state,
                    isFront: true,
                  ),
                  const Spacer(),
                  RowWithButtons(pState: state),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildRear() {
    return __buildLayout(
      key: const ValueKey(false),
      child: Card(
        elevation: 4,
        child: BlocBuilder<PhrasesCubit, PhrasesState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.isLoading)
                  const Text('Loading')
                else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlagButton(
                        pState: state,
                      ),
                      SpeakButton(phrase: state.textForDisplay.toString()),
                    ],
                  ),
                  TextForDisplay(
                    pState: state,
                    isFront: false,
                  ),
                  const Spacer(),
                  RowWithButtons(pState: state),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget __buildLayout({
    required Key key,
    required Widget child,
  }) {
    return Container(
      key: key,
      child: child,
    );
  }
}

class TextForDisplay extends StatelessWidget {
  const TextForDisplay({
    super.key,
    required this.pState,
    required this.isFront,
  });

  final PhrasesState pState;
  final bool isFront;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: !isFront
            ? RichText(
                maxLines: 4,
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: pState.textForDisplay[0],
                  style: Theme.of(context).textTheme.headline3,
                  children: <TextSpan>[
                    TextSpan(
                      text: pState.textForDisplay[1],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: pState.textForDisplay[2],
                    ),
                  ],
                ),
              )
            : Text(
                pState.byAnotherWords,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),

        // child: pState.displayInEnglish && !isFront
        //     ? RichText(
        //         maxLines: 4,
        //         textAlign: TextAlign.center,
        //         text: TextSpan(
        //           text: pState.textForDisplay[0],
        //           style: Theme.of(context).textTheme.headline3,
        //           children: <TextSpan>[
        //             TextSpan(
        //               text: pState.textForDisplay[1],
        //               style: const TextStyle(
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             TextSpan(
        //               text: pState.textForDisplay[2],
        //             ),
        //           ],
        //         ),
        //       )
        //     : Text(
        //         pState.displayInEnglish
        //             ? pState.byAnotherWords
        //             : pState.sentenceDisplayed
        //                 ? pState.currentPhrase.sentenceTranslation
        //                 : pState.currentPhrase.byAnotherWordsTranslation,
        //         textAlign: TextAlign.center,
        //         style: Theme.of(context).textTheme.headline3,
        //       ),
      ),
    );
  }
}

class RowWithButtons extends StatelessWidget {
  const RowWithButtons({
    super.key,
    required this.pState,
  });

  final PhrasesState pState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          PreviousPhraseButton(
            phrasesState: pState,
          ),
          const SizedBox(
            width: 10,
          ),
          NextPhraseButton(
            phrasesState: pState,
          ),
        ],
      ),
    );
  }
}
