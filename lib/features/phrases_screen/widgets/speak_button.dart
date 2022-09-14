import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SpeakButton extends StatefulWidget {
  const SpeakButton({
    super.key,
    required this.phrase,
  });

  final String phrase;

  @override
  State<SpeakButton> createState() => _SpeakButtonState();
}

enum TtsState { playing, stopped }

class _SpeakButtonState extends State<SpeakButton> {
  late FlutterTts flutterTts;
  TtsState ttsState = TtsState.stopped;
  double volume = 0.5;
  double pitch = 1;
  double rate = 0.5;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    initSpeak();
  }

  void initSpeak() {
    flutterTts
      ..setStartHandler(() {
        setState(() {
          ttsState = TtsState.playing;
        });
      })
      ..setCompletionHandler(() {
        setState(() {
          ttsState = TtsState.stopped;
        });
      })
      ..setErrorHandler((msg) {
        setState(() {
          ttsState = TtsState.stopped;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }

  Future<void> _speak(String text) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    final result = await flutterTts.speak(text);
    if (result == 1) setState(() => ttsState = TtsState.playing);
  }

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
          _speak(widget.phrase);
        },
      ),
    );
  }
}
