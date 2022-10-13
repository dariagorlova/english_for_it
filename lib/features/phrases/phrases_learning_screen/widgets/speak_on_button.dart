import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

class SpeakButton extends StatefulWidget {
  const SpeakButton({
    super.key,
    required this.phrase,
  });

  final String phrase;

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

  // String formTextForPlay() {
  //   final buffer = StringBuffer();
  //   for (final p in widget.phrase) {
  //     buffer.write(p);
  //   }
  //   return buffer.toString();
  // }

  Future<String?> getVoiceByLang(String lang) async {
    final voices = await tts.getVoiceByLang(languageCode!);
    if (voices != null && voices.isNotEmpty) {
      return voices.first;
    }
    return null;
  }

  void speak() {
    if (widget.phrase.isEmpty) return;

    //text = formTextForPlay();
    text = widget.phrase;
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
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    var iconSize = 35.0;
    if (widthScreen > 1000) {
      // WebApp
      iconSize = heightScreen / 25;
    } else if (MediaQuery.of(context).orientation == Orientation.portrait) {
      iconSize = heightScreen / 25;
    } else {
      iconSize = widthScreen / 25;
    }

    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        alignment: Alignment.topRight,
        icon: const Icon(Icons.volume_up),
        iconSize: iconSize, //MediaQuery.of(context).size.height / 25,
        color: Colors.green,
        splashColor: Colors.greenAccent,
        onPressed: speak,
      ),
    );
  }
}
