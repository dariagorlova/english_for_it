//import 'dart:math';
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

  List<String> getDailyWords() => _getWords(seed);

  List<String> _getWords(int seed) {
    final list = allWords.getAllWords();
    // final index = Random(seed).nextInt(list.length);

    return list; //list.elementAt(index);
  }
}
