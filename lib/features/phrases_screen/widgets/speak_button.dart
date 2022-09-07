import 'package:flutter/material.dart';

class SpeakButton extends StatelessWidget {
  const SpeakButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        alignment: Alignment.topRight,
        icon: const Icon(Icons.volume_up),
        iconSize: 30,
        color: Colors.green,
        splashColor: Colors.greenAccent,
        onPressed: () {
          //_speak(state.currentWord.word);
        },
      ),
    );
  }
}
