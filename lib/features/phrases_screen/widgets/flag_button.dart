import 'package:flutter/material.dart';

class FlagButton extends StatelessWidget {
  const FlagButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.flag),
      onPressed: () {
        //cubit. changeLanguage;
      },
    );
  }
}
