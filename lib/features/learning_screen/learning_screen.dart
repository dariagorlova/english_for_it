import 'package:flutter/material.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Words for Today'),
        ),
        body: Center(
          child: SizedBox(
            height: 300, // ! make with MediaQuery!
            child: Card(
              elevation: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: const Icon(Icons.arrow_back_ios),
                    onTap: () {},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'developer',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const Divider(),
                      Text(
                        'розробник',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                  InkWell(
                    child: const Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('TEST'),
          onPressed: () {},
        ),
      ),
    );
  }
}
