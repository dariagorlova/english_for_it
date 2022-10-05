import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/phrase_card.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/speak_off_button.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/speak_on_button.dart';
import 'package:flutter/material.dart';

class OneSideCard extends StatelessWidget {
  const OneSideCard({
    super.key,
    required this.inEnglish,
    required this.textWidget,
    required this.previous,
    required this.next,
    required this.language,
    required this.textToSpeak,
    required this.cardStatus,
  });
  final Widget textWidget;
  final bool inEnglish;
  final CardStatus cardStatus;
  final VoidCallback language;
  final String textToSpeak;
  final VoidCallback previous;
  final VoidCallback next;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: inEnglish
                    ? Text(
                        '🇺🇦',
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    : Text(
                        '🇺🇸',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                onPressed: language,
              ),
              if (inEnglish)
                SpeakButton(phrase: textToSpeak)
              else
                const SpeakOffButton(),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: textWidget,
            ),
          ),
          //const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                NavigationButton(
                  icon: Icons.arrow_back_ios,
                  navigationFunction: previous,
                  mustBeBlocked: cardStatus == CardStatus.first,
                ),
                const SizedBox(
                  width: 10,
                ),
                NavigationButton(
                  icon: Icons.arrow_forward_ios,
                  navigationFunction: next,
                  mustBeBlocked: cardStatus == CardStatus.last,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.mustBeBlocked,
    required this.navigationFunction,
    required this.icon,
  });

  final bool mustBeBlocked;
  final VoidCallback navigationFunction;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        foregroundDecoration: mustBeBlocked
            ? BoxDecoration(
                color: Theme.of(context).colorScheme.error,
                backgroundBlendMode: BlendMode.lighten,
              )
            : null,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).canvasColor,
            boxShadow: [
              BoxShadow(color: Theme.of(context).dividerColor, spreadRadius: 3),
            ],
          ),
          child: InkWell(
            onTap: navigationFunction,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                icon, //Icons.arrow_back_ios,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
