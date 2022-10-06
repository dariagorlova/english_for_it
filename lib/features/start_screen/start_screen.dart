import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with WidgetsBindingObserver {
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

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.resumed) {
  //     FlutterAppBadger.removeBadge();
  //   }
  // }

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
              onTap: () {
                context.go('/searchWord');
                Navigator.pop(context);
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
              onTap: () {
                context.go('/irregularVerbs');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
        child: Center(
          child: MediaQuery.of(context).orientation == Orientation.portrait
              ? const VerticalView()
              : const HorizontalView(),
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
    final widthScreen = MediaQuery.of(context).size.width;
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
            onPressed: () {
              //   async {
              // await FlutterNotification.instance.cancelNotification();
              // await FlutterNotification.instance.requestPermissions();
              // final now = tz.TZDateTime.now(tz.local);
              // await FlutterNotification.instance.registerMessage(
              //   //hour: now.hour,
              //   hour: now.hour + 24,
              //   minutes: now.minute,
              //   message: 'Time to English practice!',
              // );
              //
              // if (mounted) {
              context.go('/learning');
              //}
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
        SizedBox(
          width: widthScreen / 2,
          child: ElevatedButton(
            onPressed: () {
              context.go('/learningPhrases');
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
          width: widthScreen / 2.5,
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
                onPressed: () {
                  context.go('/learning');
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
            SizedBox(
              width: widthScreen / 4,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/learningPhrases');
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
