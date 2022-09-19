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
        layoutBuilder: (widget, list) {
          return Stack(children: [widget!, ...list]);
        },
        switchInCurve: Curves.easeInBack,
        switchOutCurve: Curves.easeInBack.flipped,
        child: _showFrontSide ? _buildFront() : _buildRear(),
      ),
    );
  }

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    // ignore: prefer_int_literals
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
                      if (state.displayInEnglish)
                        SpeakButton(phrase: state.textForDisplay)
                      else
                        const SpeakButton(phrase: <String>[]),
                    ],
                  ),
                  // TextForDisplay(
                  //   pState: state,
                  // ),
                  Text(
                    state.byAnotherWords,
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
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
                      SpeakButton(phrase: state.textForDisplay),
                    ],
                  ),
                  // TextForDisplay(
                  //   pState: state,
                  // ),
                  Text(
                    state.sentence,
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
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
  });

  final PhrasesState pState;
  //final bool isFront;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: pState.sentenceDisplayed
            ? Text(
                pState.sentence,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              )
            : Text(
                pState.byAnotherWords,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
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


// version 2
// class PhraseCard extends StatefulWidget {
//   const PhraseCard({super.key});

//   @override
//   PhraseCardState createState() => PhraseCardState();
// }

// class PhraseCardState extends State<PhraseCard>
//     with SingleTickerProviderStateMixin {
//   bool _isFront = true;
//   @override
//   void initState() {
//     super.initState();
//   }

//   void _switchCard() {
//     setState(() {
//       _isFront = !_isFront;
//       context.read<PhrasesCubit>().changePhraseView();
//     });
//   }

//   Widget _frontCard() {
//     return Container(
//       key: const ValueKey(true),
//       //color: Colors.orangeAccent,
//       //width: 400,
//       //height: 800,
//       child: Card(
//         elevation: 4,
//         child: BlocBuilder<PhrasesCubit, PhrasesState>(
//           builder: (context, state) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if (state.isLoading)
//                   const Text('Loading')
//                 else ...[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       FlagButton(
//                         pState: state,
//                       ),
//                       if (state.displayInEnglish)
//                         SpeakButton(phrase: state.textForDisplay)
//                       else
//                         const SpeakButton(phrase: <String>[]),
//                     ],
//                   ),
//                   TextForDisplay(
//                     pState: state,
//                   ),
//                   // Center(
//                   //   child: Padding(
//                   //     padding: const EdgeInsets.all(10),
//                   //     //child: Text(
//                   //     child: RichText(
//                   //       maxLines: 6,
//                   //       text: TextSpan(
//                   //         text: state.byAnotherWords,
//                   //         style: Theme.of(context).textTheme.headline3,
//                   //       ),
//                   //       textAlign: TextAlign.center,
//                   //     ),
//                   //   ),
//                   // ),
//                   const Spacer(),
//                   RowWithButtons(pState: state),
//                 ],
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget _rearCard() {
//     return Container(
//       key: const ValueKey(false),
//       //color: Colors.orange,
//       //width: 400,
//       //height: 800,
//       child: Card(
//         elevation: 4,
//         child: BlocBuilder<PhrasesCubit, PhrasesState>(
//           builder: (context, state) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if (state.isLoading)
//                   const Text('Loading')
//                 else ...[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       FlagButton(
//                         pState: state,
//                       ),
//                       SpeakButton(phrase: state.textForDisplay),
//                     ],
//                   ),
//                   TextForDisplay(
//                     pState: state,
//                   ),
//                   // Center(
//                   //   child: Padding(
//                   //     padding: const EdgeInsets.all(10),
//                   //     child: TextForDisplay(
//                   //       pState: state,
//                   //     ),
//                   //   ),
//                   // ),
//                   const Spacer(),
//                   RowWithButtons(pState: state),
//                 ],
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildFlipAnimation();
//   }

//   Widget _buildFlipAnimation() {
//     return GestureDetector(
//       onTap: _switchCard,
//       child: AnimatedSwitcher(
//         duration: const Duration(milliseconds: 800),
//         transitionBuilder: __transitionBuilder,
//         layoutBuilder: (widget, list) {
//           return Stack(children: [widget!, ...list]);
//         },
//         switchInCurve: Curves.easeInBack,
//         switchOutCurve: Curves.easeInBack.flipped,
//         child: _isFront ? _frontCard() : _rearCard(),
//       ),
//     );
//   }

//   Widget __transitionBuilder(Widget widget, Animation<double> animation) {
//     // ignore: prefer_int_literals
//     final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
//     return AnimatedBuilder(
//       animation: rotateAnim,
//       child: widget,
//       builder: (context, widget) {
//         final isUnder = ValueKey(_isFront) != widget!.key;
//         var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
//         tilt *= isUnder ? -1.0 : 1.0;
//         final value =
//             isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
//         return Transform(
//           transform: (Matrix4.rotationX(value)..setEntry(3, 1, tilt)),
//           alignment: Alignment.center,
//           child: widget,
//         );
//       },
//     );
//   }
//   // Widget build(BuildContext context) {
//   //   return GestureDetector(
//   //     onTap: () {
//   //       setState(() {
//   //         _isFront = !_isFront;
//   //         context.read<PhrasesCubit>().changePhraseView();
//   //       });
//   //     },
//   //     child: AnimatedSwitcher(
//   //       duration: const Duration(seconds: 1),
//   //       transitionBuilder: (Widget child, Animation<double> animation) {
//   //         // ignore: prefer_int_literals
//   //         final rotate = Tween(begin: pi, end: 0.0).animate(animation);
//   //         return AnimatedBuilder(
//   //           animation: rotate,
//   //           child: child,
//   //           builder: (BuildContext context, child) {
//   //             final double angle;
//   //             if (ValueKey(_isFront) != widget.key) {
//   //               angle = min(rotate.value, pi / 2);
//   //             } else {
//   //               angle = rotate.value;
//   //             }
//   //             return Transform(
//   //               transform: Matrix4.rotationY(angle),
//   //               alignment: Alignment.center,
//   //               child: child,
//   //             );
//   //           },
//   //         );
//   //       },
//   //       switchInCurve: Curves.easeInCubic,
//   //       switchOutCurve: Curves.easeOutCubic,
//   //       child: _isFront ? _frontCard() : _rearCard(),
//   //     ),
//   //   );
//   // }
// }