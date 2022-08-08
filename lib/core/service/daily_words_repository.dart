import 'dart:math';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/service/vocabulary.dart';
import 'package:injectable/injectable.dart';
import 'package:translator/translator.dart';

@injectable
class DailyWordsRepository {
  DailyWordsRepository(
    this.allWords,
    this._googleTranslator,
    @Named('seed') this.seed,
  );

  final Vocabulary allWords;
  final int seed;
  final GoogleTranslator _googleTranslator;

  Future<List<OneWord>> getDailyWords() {
    final list = allWords.getAllWords();

    var currentSeed = seed;
    final list2 = List.generate(10, (_) {
      currentSeed++;
      return _getRandomElement(list, currentSeed);
    });

    final wordsWithTranslate = list2
        .map(
          (word) => OneWord(word: word.toLowerCase(), translate: ''),
        )
        .toList();

    return _translateToUA(wordsWithTranslate);
  }

  String _getRandomElement<String>(List<String> allWord, int seed) {
    final i = Random(seed).nextInt(allWord.length);
    return allWord[i];
  }

  Future<List<OneWord>> _translateToUA(List<OneWord> words) {
    return Future.wait(
      words.map((w) async {
        final translation = await _googleTranslator.translate(
          w.word,
          from: 'en',
          to: 'uk',
        );
        return w.copyWith(translate: translation.text);
      }),
      eagerError: true,
    );
  }
}
