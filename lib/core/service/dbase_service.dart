import 'dart:async';
import 'package:english_for_it/core/domain/app_settings.dart';
import 'package:english_for_it/core/domain/dbase.dart';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/core/model/word_translation_model.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class DbaseService {
  Future<void> connectDb();
  Future<void> disconnectDb();
  Future<int> getWordsCount();
  Future<OneWordPair> getWordByIndex(int index);
  Future<List<OneWordPair>> get10WordsForToday();
  Future<int> getPhrasesCount();
  Future<Phrase> getPhraseByIndex(int index);
  Future<List<Phrase>> get10PhrasesForToday();
}

@prod
@Injectable(as: DbaseService)
class DbaseServiceImpl extends DbaseService {
  DbaseServiceImpl({required this.isPermissionsGranted, required this.db});
  final DbStorage db;
  final bool isPermissionsGranted;

  static Future<bool> checkPermissions() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      status = await Permission.storage.request();
    }
    return status.isGranted;
  }

  @override
  Future<void> connectDb() async {
    if (isPermissionsGranted) await db.openDict();
  }

  @override
  Future<void> disconnectDb() async {
    if (isPermissionsGranted) await db.closeDict();
  }

  @override
  Future<int> getWordsCount() async {
    if (isPermissionsGranted && db.isConnected()) {
      final res = await db.getWordsCount();
      return res;
    }
    return -1;
  }

  @override
  Future<OneWordPair> getWordByIndex(int index) async {
    if (isPermissionsGranted && db.isConnected()) {
      final res = await db.getWordByIndex(index);
      return res;
    }
    return OneWordPair(
      newId: -1,
      word: 'db connection error',
      translation: "з'єднання з БД відсутнє",
    );
  }

  @override
  Future<List<OneWordPair>> get10WordsForToday() async {
    if (isPermissionsGranted && db.isConnected()) {
      final dt = DateTime.now();
      // read shared_preferences
      final appDataProvider = AppDataProvider();
      final curDate = '${dt.year}.${dt.month}.${dt.day}';
      final savedDate = appDataProvider.getDate() ?? curDate;
      var savedIndex = appDataProvider.getIndex() ?? 0;

      // check if curDate != savedDate, add 10 to savedIndex
      // if after adding savedIndex > items count in DB,
      // drag savedIndex through 0
      if (curDate.compareTo(savedDate) != 0) {
        savedIndex += 10;
        final totalElements = await getWordsCount();
        if (savedIndex >= totalElements) savedIndex -= totalElements;
      }

      // take 10 elements in a row, start from savedIndex
      final res = await db.get10WordsForToday(savedIndex);
      // update info in shared_preferences
      unawaited(appDataProvider.saveDate(curDate));
      unawaited(appDataProvider.saveIndex(savedIndex));
      return res;
    } else {
      return <OneWordPair>[
        OneWordPair(
          word: 'PERMISSIONS DENIED',
          translation: 'ЗАБОРОНЕНО КОРИСТУВАЧЕМ',
        ),
      ];
    }
  }

  @override
  Future<int> getPhrasesCount() async {
    if (isPermissionsGranted && db.isConnected()) {
      final res = await db.getWordsCount();
      return res;
    }
    return -1;
  }

  @override
  Future<Phrase> getPhraseByIndex(int index) async {
    if (isPermissionsGranted && db.isConnected()) {
      final res = await db.getPhraseByIndex(index);
      return res;
    }
    return const Phrase(
      newId: -1,
      phrase: 'db connection error',
      byAnotherWords: 'db connection error',
      sentence: 'db connection error',
      byAnotherWordsTranslation: "з'єднання з БД відсутнє",
      sentenceTranslation: "з'єднання з БД відсутнє",
    );
  }

  @override
  Future<List<Phrase>> get10PhrasesForToday() async {
    if (isPermissionsGranted && db.isConnected()) {
      final dt = DateTime.now();
      // read shared_preferences
      final appDataProvider = AppDataProvider();
      final curDate = '${dt.year}.${dt.month}.${dt.day}';
      final savedDate = appDataProvider.getDate() ?? curDate;
      var savedIndex = appDataProvider.getIndex() ?? 0;

      // read from db
      if (curDate.compareTo(savedDate) != 0) {
        savedIndex += 10;
        final totalElements = await getPhrasesCount();
        if (savedIndex >= totalElements) savedIndex -= totalElements;
      }
      final res = await db.get10PhrasesForToday(savedIndex);

      // update info in shared_preferences
      unawaited(appDataProvider.saveDate(curDate));
      unawaited(appDataProvider.saveIndex(savedIndex));
      return res;
    } else {
      return <Phrase>[
        const Phrase(
          newId: -1,
          phrase: 'PERMISSIONS DENIED',
          byAnotherWords: 'PERMISSIONS DENIED',
          sentence: 'PERMISSIONS DENIED',
          byAnotherWordsTranslation: 'ЗАБОРОНЕНО КОРИСТУВАЧЕМ',
          sentenceTranslation: 'ЗАБОРОНЕНО КОРИСТУВАЧЕМ',
        ),
      ];
    }
  }

  FutureOr<void> onDispose() {
    return db.closeDict();
  }
}
