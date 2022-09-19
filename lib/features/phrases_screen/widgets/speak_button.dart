import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

class SpeakButton extends StatefulWidget {
  const SpeakButton({
    super.key,
    required this.phrase,
  });

  final List<String> phrase;

  @override
  State<SpeakButton> createState() => _SpeakButtonState();
}

class _SpeakButtonState extends State<SpeakButton> {
  final String defaultLanguage = 'en-US';

  TextToSpeech tts = TextToSpeech();

  String text = '';
  double volume = 1; // Range: 0-1
  double rate = 1; // Range: 0-2
  double pitch = 1; // Range: 0-2

  String? language;
  String? languageCode;
  String? voice;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initLanguages();
    });
  }

  Future<void> initLanguages() async {
    if (widget.phrase.isEmpty) return;

    languageCode = defaultLanguage;
    language = await tts.getDisplayLanguageByCode(languageCode!);
    voice = await getVoiceByLang(languageCode!);

    if (mounted) {
      setState(() {});
    }
  }

  String formTextForPlay() {
    final buffer = StringBuffer();
    for (final p in widget.phrase) {
      buffer.write(p);
    }
    return buffer.toString();
  }

  Future<String?> getVoiceByLang(String lang) async {
    final voices = await tts.getVoiceByLang(languageCode!);
    if (voices != null && voices.isNotEmpty) {
      return voices.first;
    }
    return null;
  }

  void speak() {
    if (widget.phrase.isEmpty) return;

    text = formTextForPlay();
    tts
      ..setVolume(volume)
      ..setRate(rate);
    if (languageCode != null) {
      tts.setLanguage(languageCode!);
    }
    tts
      ..setPitch(pitch)
      ..speak(text);
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
        onPressed: speak,
      ),
    );
  }
}


//import 'package:flutter_tts/flutter_tts.dart';

// class SpeakButton extends StatefulWidget {
//   const SpeakButton({
//     super.key,
//     required this.phrase,
//   });

//   final String phrase;

//   @override
//   State<SpeakButton> createState() => _SpeakButtonState();
// }

// enum TtsState { playing, stopped }

// class _SpeakButtonState extends State<SpeakButton> {
//   late FlutterTts flutterTts;
//   TtsState ttsState = TtsState.stopped;
//   double volume = 0.5;
//   double pitch = 1;
//   double rate = 0.5;

//   @override
//   void initState() {
//     super.initState();
//     flutterTts = FlutterTts();
//     initSpeak();
//   }

//   void initSpeak() {
//     flutterTts
//       ..setStartHandler(() {
//         setState(() {
//           ttsState = TtsState.playing;
//         });
//       })
//       ..setCompletionHandler(() {
//         setState(() {
//           ttsState = TtsState.stopped;
//         });
//       })
//       ..setErrorHandler((msg) {
//         setState(() {
//           ttsState = TtsState.stopped;
//         });
//       });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     flutterTts.stop();
//   }

//   Future<void> _speak(String text) async {
//     await flutterTts.setVolume(volume);
//     await flutterTts.setSpeechRate(rate);
//     await flutterTts.setPitch(pitch);

//     final result = await flutterTts.speak(text);
//     if (result == 1) setState(() => ttsState = TtsState.playing);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topRight,
//       child: IconButton(
//         alignment: Alignment.topRight,
//         icon: const Icon(Icons.volume_up),
//         iconSize: 30,
//         color: Colors.green,
//         splashColor: Colors.greenAccent,
//         onPressed: () {
//           _speak(widget.phrase);
//         },
//       ),
//     );
//   }
// }
