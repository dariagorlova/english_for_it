//import 'dart:math';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/service/vocabulary.dart';
import 'package:injectable/injectable.dart';

@injectable
class DailyWordsRepository {
  DailyWordsRepository(
    this.allWords,
    @Named('seed') this.seed,
  );

  final Vocabulary allWords;
  final int seed;

  List<OneWord> getDailyWords() => _getWords(seed);

  List<OneWord> _getWords(int seed) {
    final list = allWords.getAllWords();

    final wordsWithTranslate = <OneWord>[
      OneWord(word: list[0], translate: 'розробник'),
      OneWord(word: list[1], translate: 'програміст'),
      OneWord(word: list[2], translate: 'компьютер'),
    ];
    //for (var i = 0; i < 10; i++)
    //{
    // final index = Random(seed).nextInt(list.length);
    // get translate
    //}

    return wordsWithTranslate;
  }
}
