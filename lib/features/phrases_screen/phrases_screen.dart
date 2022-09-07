import 'package:english_for_it/features/phrases_screen/widgets/phrase_card.dart';
import 'package:flutter/material.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Phrases for Today'),
        actions: [
          IconButton(
            onPressed: () {
              //context.read<PhrasesCubit>().backToStart(context);
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text('1/10'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: PhraseCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}