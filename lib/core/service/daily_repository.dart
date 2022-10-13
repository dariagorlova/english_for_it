import 'package:english_for_it/core/domain/dbase.dart';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/core/service/dbase_service.dart';
import 'package:injectable/injectable.dart';

abstract class Repository {
  Future<List<OneWord>> getDailyWords();
  Future<List<OneWord>> getAllWords();
  Future<List<Phrase>> getDailyPhrases();
}

@injectable
class DailyRepository implements Repository {
  DailyRepository();

  @override
  Future<List<OneWord>> getDailyWords() async {
    final list2 = <OneWord>[];
    final dbase = DbaseServiceImpl(
      isPermissionsGranted: await DbaseServiceImpl.checkPermissions(),
      db: DbStorage(),
    );
    await dbase.connectDb();
    final res = await dbase.get10WordsForToday();
    for (final element in res) {
      list2.add(
        OneWord(word: element.word, translate: element.translation),
      );
    }
    await dbase.disconnectDb();

    return list2;
  }

  @override
  Future<List<OneWord>> getAllWords() async {
    final dbase = DbaseServiceImpl(
      isPermissionsGranted: await DbaseServiceImpl.checkPermissions(),
      db: DbStorage(),
    );
    await dbase.connectDb();
    final res = await dbase.getAllWords();
    await dbase.disconnectDb();

    return res;
  }

  @override
  Future<List<Phrase>> getDailyPhrases() async {
    final list2 = <Phrase>[];
    final dbase = DbaseServiceImpl(
      isPermissionsGranted: await DbaseServiceImpl.checkPermissions(),
      db: DbStorage(),
    );
    await dbase.connectDb();
    final res = await dbase.get10PhrasesForToday();
    for (final element in res) {
      list2.add(
        Phrase(
          phrase: element.phrase,
          byAnotherWords: element.byAnotherWords,
          sentence: element.sentence,
          byAnotherWordsTranslation: element.byAnotherWordsTranslation,
          sentenceTranslation: element.sentenceTranslation,
        ),
      );
    }
    await dbase.disconnectDb();

    return list2;
  }
}
