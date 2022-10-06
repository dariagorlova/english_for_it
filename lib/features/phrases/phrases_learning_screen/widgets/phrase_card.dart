import 'dart:math';
import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_cubit.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_state.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/one_side_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum CardStatus { first, intermediate, last }

class PhraseCard extends StatefulWidget {
  const PhraseCard({super.key});

  @override
  State<PhraseCard> createState() => _PhraseCardState();
}

class _PhraseCardState extends State<PhraseCard> {
  double angle = 0;
  bool firstSide = true;
  void flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  void backBtn() {
    context.read<PhrasesCubit>().prevPhrase();
  }

  void nextBtn() {
    context.read<PhrasesCubit>().nextPhrase();
  }

  void languageBtn() {
    context.read<PhrasesCubit>().changeLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocConsumer<PhrasesCubit, PhrasesState>(
        listener: (context, state) => debugPrint(state.isLoading.toString()),
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: GestureDetector(
                onTap: flip,
                child: TweenAnimationBuilder(
                  curve: Curves.easeInOutBack,
                  tween: Tween<double>(begin: 0, end: angle),
                  duration: const Duration(milliseconds: 1000),
                  builder: (context, double val, _) {
                    if (val >= pi / 2) {
                      firstSide = false;
                    } else {
                      firstSide = true;
                    }
                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateX(val),
                      child: Container(
                        child: firstSide
                            //? Text('Front side') //state.byAnotherWords)
                            ? OneSideCard(
                                inEnglish: state.displayInEnglish,
                                language: languageBtn,
                                textToSpeak: state.displayInEnglish
                                    ? state.byAnotherWords
                                    : '',
                                previous: backBtn,
                                next: nextBtn,
                                textWidget: Text(
                                  state.byAnotherWords,
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  textAlign: TextAlign.center,
                                ),
                                cardStatus: state.cardStatus,
                              )
                            : Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.identity()..rotateX(pi),
                                //child: Text('Back side') //state.sentence),
                                child: OneSideCard(
                                  inEnglish: state.displayInEnglish,
                                  language: languageBtn,
                                  textToSpeak: state.displayInEnglish
                                      ? state
                                          .dailyPhrases[state.indexCurrenPhrase]
                                          .sentence
                                      : '',
                                  previous: backBtn,
                                  next: nextBtn,
                                  textWidget: state.displayInEnglish
                                      ? RichText(
                                          maxLines: 6,
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: state.sentence[0],
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: state.sentence[1],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall
                                                    ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                              TextSpan(
                                                text: state.sentence[2],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall,
                                              ),
                                            ],
                                          ),
                                        )
                                      : Text(
                                          state.sentenceTranslation,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                          textAlign: TextAlign.center,
                                        ),
                                  cardStatus: state.cardStatus,
                                ),
                              ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

// version without animation
// class PhraseCard extends StatelessWidget {
//   const PhraseCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<PhrasesCubit, PhrasesState>(
//       listener: (context, state) => {}, //print(state.textForDisplay),
//       builder: (context, state) {
//         return InkWell(
//           onTap: () => context.read<PhrasesCubit>().changePhraseView(),
//           child: Card(
//             elevation: 4,
//             child: Column(
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
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Text(state.textForDisplay[0]),
//                     // child: RichText(
//                     //   maxLines: 6,
//                     //   textAlign: TextAlign.center,
//                     //   text: TextSpan(
//                     //     text: state.textForDisplay[0],
//                     //     style: Theme.of(context).textTheme.headline3,
//                     //     children: <TextSpan>[
//                     //       TextSpan(
//                     //         text: state.textForDisplay[1],
//                     //         style:
//                     //             Theme.of(context).textTheme.headline3?.copyWith(
//                     //                   fontWeight: FontWeight.bold,
//                     //                 ),
//                     //       ),
//                     //       TextSpan(
//                     //         text: state.textForDisplay[2],
//                     //         style: Theme.of(context).textTheme.headline3,
//                     //       ),
//                     //     ],
//                     //   ),
//                     // ),
//                   ),
//                   const Spacer(),
//                   RowWithButtons(pState: state),
//                 ],
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class PhraseCard extends StatefulWidget {
//   const PhraseCard({super.key});

//   @override
//   State<PhraseCard> createState() => _PhraseCardState();
// }

// class _PhraseCardState extends State<PhraseCard> {
//   late bool _showFrontSide;

//   @override
//   void initState() {
//     super.initState();
//     _showFrontSide = true;
//   }

//   void _switchCard() {
//     setState(() {
//       _showFrontSide = !_showFrontSide;
//       context.read<PhrasesCubit>().changePhraseView();
//     });
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
//         child: _showFrontSide ? _buildFront() : _buildRear(),
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
//         final isUnder = ValueKey(_showFrontSide) != widget!.key;
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

//   Widget _buildFront() {
//     return __buildLayout(
//       key: const ValueKey(true),
//       child: Card(
//         elevation: 4,
//         child: BlocConsumer<PhrasesCubit, PhrasesState>(
//           listener: (context, state) => print(state.textForDisplay),
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
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Text(
//                       state.byAnotherWords,
//                       style: Theme.of(context).textTheme.headline3,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
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

//   Widget _buildRear() {
//     // final Widget parsedBBCode = BBCodeText(
//     //   errorBuilder: (context, error, stack) {
//     //     return const Text(
//     //       'Failed to parse BBCode correctly.',
//     //       style: TextStyle(
//     //         color: Colors.red,
//     //       ),
//     //     );
//     //   },
//     //   defaultStyle: Theme.of(context).textTheme.headline3,
//     //   data: "He's a [b]driven[/b] person.",
//     // );

//     return __buildLayout(
//       key: const ValueKey(false),
//       child: Card(
//         elevation: 4,
//         child: BlocConsumer<PhrasesCubit, PhrasesState>(
//           listener: (context, state) => print(state.textForDisplay),
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
//                   // if (state.sentenceDisplayed)
//                   //   parsedBBCode

//                   if ((state.sentenceDisplayed) && (state.displayInEnglish))
//                     TextForDisplay(pState: state)
//                   else // !!!!!! if (!state.sentenceDisplayed)
//                     Text(
//                       state.textForDisplay[0],
//                       style: Theme.of(context).textTheme.headline3,
//                       textAlign: TextAlign.center,
//                     ),
//                   // Text(
//                   //   state.sentence,
//                   //   style: Theme.of(context).textTheme.headline3,
//                   //   textAlign: TextAlign.center,
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

//   Widget __buildLayout({
//     required Key key,
//     required Widget child,
//   }) {
//     return Container(
//       key: key,
//       child: child,
//     );
//   }
// }

// class TextForDisplay extends StatelessWidget {
//   const TextForDisplay({
//     super.key,
//     required this.pState,
//   });

//   final PhrasesState pState;
//   //final bool isFront;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: RichText(
//           maxLines: 6,
//           textAlign: TextAlign.center,
//           text: TextSpan(
//             text: pState.textForDisplay[0],
//             style: Theme.of(context).textTheme.headline3,
//             children: <TextSpan>[
//               TextSpan(
//                 text: pState.textForDisplay[1],
//                 style: Theme.of(context).textTheme.headline3?.copyWith(
//                       fontWeight: FontWeight.bold,
//                     ),
//               ),
//               TextSpan(
//                 text: pState.textForDisplay[2],
//                 style: Theme.of(context).textTheme.headline3,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RowWithButtons extends StatelessWidget {
//   const RowWithButtons({
//     super.key,
//     required this.pState,
//   });

//   final PhrasesState pState;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Row(
//         children: [
//           PreviousPhraseButton(
//             phrasesState: pState,
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           NextPhraseButton(
//             phrasesState: pState,
//           ),
//         ],
//       ),
//     );
//   }
// }

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
