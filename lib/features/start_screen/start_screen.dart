import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/di/injection.dart';
import 'package:english_for_it/features/start_screen/search_word/cubit/start_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StartCubit>(),
      child: const StartScreenView(),
    );
  }
}

class StartScreenView extends StatefulWidget {
  const StartScreenView({super.key});

  @override
  State<StartScreenView> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreenView>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                'Improve Your English Level',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.translate,
              ),
              title: Text(
                'Translator',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () async {
                await context.read<StartCubit>().goSearchWord();
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.list_alt,
              ),
              title: Text(
                'Irregular Verbs',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onTap: () async {
                await context.read<StartCubit>().goToIrregularVerbs();
              },
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: MediaQuery.of(context).size.width > 1000 // WebApp
                  ? const VerticalView()
                  : MediaQuery.of(context).orientation == Orientation.portrait
                      ? const VerticalView()
                      : const HorizontalView(),
            ),
          ),
        ),
      ),
    );
  }
}

class VerticalView extends StatelessWidget {
  const VerticalView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;
    if (widthScreen > 1000) {
      // WebApp
      widthScreen = 413;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/meeting.png',
          width: MediaQuery.of(context).size.width - 10,
          height: MediaQuery.of(context).size.height / 3.5,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Today is an excellent day to learn something new!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          height: heightScreen / 8.5,
        ),
        SizedBox(
          width: widthScreen / 2,
          child: ElevatedButton(
            onPressed: () async {
              //context.go('/learning');
              await context.read<StartCubit>().goLearnWords();
            },
            child: Text(
              'learn words',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).cardColor),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: widthScreen / 2,
          child: ElevatedButton(
            onPressed: () async {
              //context.go('/learningPhrases');
              await context.read<StartCubit>().goLearnPhrases();
            },
            child: Text(
              'learn phrases',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).cardColor),
            ),
          ),
        ),
      ],
    );
  }
}

class HorizontalView extends StatelessWidget {
  const HorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Image.asset(
          'assets/images/meeting.png',
          width: widthScreen / 3,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: widthScreen / 2,
              child: Text(
                'Today is an excellent day to learn something new!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              height: heightScreen / 30,
            ),
            SizedBox(
              width: widthScreen / 4,
              child: ElevatedButton(
                onPressed: () async {
                  //context.go('/learning');
                  await context.read<StartCubit>().goLearnWords();
                },
                child: Text(
                  'learn words',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Theme.of(context).cardColor),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: widthScreen / 4,
              child: ElevatedButton(
                onPressed: () async {
                  //context.go('/learningPhrases');
                  await context.read<StartCubit>().goLearnPhrases();
                },
                child: Text(
                  'learn phrases',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Theme.of(context).cardColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
