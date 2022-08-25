import 'dart:math';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/word_translation_model.dart';
import 'package:english_for_it/core/service/dbase_service.dart';
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

  Future<List<OneWord>> getDailyWords() async {
    //final list = allWords.getAllWords();
    // var index = 0;
    // final list2 = <String>[];
    // while (true) {
    //   final element = _getRandomElement(list, seed + index);
    //   if (!list2.contains(element)) {
    //     list2.add(element);
    //   }
    //   if (list2.length == 10) {
    //     break;
    //   }
    //   index++;
    // }
    // final wordsWithTranslate = list2
    //     .map(
    //       (word) => OneWord(word: word.toLowerCase(), translate: ''),
    //     )
    //     .toList();
    // return _translateToUA(wordsWithTranslate);

    final dbase = DbaseService(
      isPermissionsGranted: await DbaseService.checkPermissions(),
    );
    await dbase.connectDb();
    final count = await dbase.getWordsCount();

    final listIndex = <int>[];
    var index = 0;
    while (true) {
      final dailyIndex = Random(seed + index).nextInt(count);
      if (!listIndex.contains(dailyIndex)) {
        listIndex.add(dailyIndex);
      }
      if (listIndex.length == 10) {
        break;
      }
      index++;
    }

    final listDailyWords = await Future.wait(
      Iterable.generate(10, (index) {
        return dbase.getWordByIndex(listIndex[index]);
      }),
    );

    await dbase.disconnectDb();

    final list2 = <OneWord>[];
    for (final w in listDailyWords) {
      list2.add(
        OneWord(word: w.word, translate: w.translation),
      );
    }

    return list2;
  }

  Future<List<OneWord>> fillFromVocabulary() async {
    final dbase = DbaseService(
      isPermissionsGranted: await DbaseService.checkPermissions(),
    );
    await dbase.connectDb();
    final _allWords = await dbase.getAllWords();
    await dbase.disconnectDb();

    final _listAllWord = <OneWord>[];
    for (final w in _allWords) {
      _listAllWord.add(
        OneWord(word: w.word, translate: w.translation),
      );
    }

    return _listAllWord;
  }

  // String _getRandomElement<String>(List<String> allWord, int seed) {
  //   final i = Random(seed).nextInt(allWord.length);
  //   return allWord[i];
  // }
  // Future<List<OneWord>> _translateToUA(List<OneWord> words) {
  //   return Future.wait(
  //     words.map((w) async {
  //       final translation = await _googleTranslator.translate(
  //         w.word,
  //         from: 'en',
  //         to: 'uk',
  //       );
  //       return w.copyWith(translate: translation.text);
  //     }),
  //     eagerError: true,
  //   );
  // }
}
