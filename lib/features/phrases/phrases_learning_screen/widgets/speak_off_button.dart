import 'package:flutter/material.dart';

class SpeakOffButton extends StatelessWidget {
  const SpeakOffButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.topRight,
      icon: const Icon(Icons.volume_off),
      iconSize: 35,
      color: Colors.green,
      splashColor: Colors.greenAccent,
      onPressed: () {},
    );
  }
}
