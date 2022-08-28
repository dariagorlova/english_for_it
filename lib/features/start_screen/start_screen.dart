//import 'package:english_for_it/core/service/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:go_router/go_router.dart';
//import 'package:timezone/data/latest.dart' as tz;
//import 'package:timezone/timezone.dart' as tz;

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

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      FlutterAppBadger.removeBadge();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Today is an excellent day to learn something new!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  //} async {
                  //await FlutterNotification.instance.cancelNotification();
                  // await FlutterNotification.instance.requestPermissions();
                  // final now = tz.TZDateTime.now(tz.local);
                  // await FlutterNotification.instance.registerMessage(
                  //   hour: now.hour, // hour: now.hour+24,
                  //   minutes: now.minute + 1,
                  //   message: 'Time to English practice!',
                  // );

                  // if (mounted) {
                  context.push('/learning');
                  //}
                },
                child: Text(
                  "Let's start",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Theme.of(context).cardColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
