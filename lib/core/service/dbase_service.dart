import 'dart:async';

import 'package:english_for_it/core/domain/dbase.dart';
import 'package:english_for_it/core/model/word_translation_model.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class DbaseService {
  // Future<bool> checkPermissions();
  Future<void> connectDb();
  Future<void> disconnectDb();
  Future<int> getWordsCount();
  Future<OneWordPair> getWordByIndex(int index);
}

@prod
@Injectable(as: DbaseService)
class DbaseServiceImpl implements DbaseService, Disposable {
  DbaseServiceImpl({required this.isPermissionsGranted});
  final _db = DbStorage();
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
    if (isPermissionsGranted) await _db.openDict();
  }

  @override
  Future<void> disconnectDb() async {
    if (isPermissionsGranted) await _db.closeDict();
  }

  // @override
  // Future<bool> saveWord(OneWordPair line) async {
  //   if (isPermissionsGranted && _db.isConnected()) {
  //     final res = await _db.saveWord(line);
  //     if (line.id == -1) {
  //       if (res == 0) return false;
  //       line = line.copyWith(id: res);
  //       return true;
  //     }
  //     return res == 1;
  //   }
  //   return false;
  // }

  @override
  Future<int> getWordsCount() async {
    if (isPermissionsGranted && _db.isConnected()) {
      final res = await _db.getWordsCount();
      return res;
    }
    return -1;
  }

  // Future<bool> deleteWordById(int id) async {
  //   if (isPermissionsGranted && _db.isConnected()) {
  //     final res = await _db.deleteWord(id);
  //     return res;
  //   }
  //   return false;
  // }

  @override
  Future<OneWordPair> getWordByIndex(int index) async {
    if (isPermissionsGranted && _db.isConnected()) {
      final res = await _db.getWordByIndex(index);
      return res;
    }
    return OneWordPair(
      newId: -1,
      word: 'db connection error',
      translation: "з'єднання з БД відсутнє",
    );
  }

  // Future<List<OneWordPair>> getAllWords() async {
  //   if (isPermissionsGranted && _db.isConnected()) {
  //     final res = await _db.getAllWords();
  //     return res;
  //   }
  //   return <OneWordPair>[];
  // }

  @override
  FutureOr<void> onDispose() {
    return _db.closeDict();
  }
}
