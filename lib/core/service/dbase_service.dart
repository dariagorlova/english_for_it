import 'package:english_for_it/core/domain/dbase.dart';
import 'package:english_for_it/core/model/word_translation_model.dart';
import 'package:permission_handler/permission_handler.dart';

class DbaseService {
  DbaseService({required this.isPermissionsGranted});
  final _db = DbStorage();
  final bool isPermissionsGranted;

  static Future<bool> checkPermissions() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      status = await Permission.storage.request();
    }
    if (!status.isGranted) {
      return false;
    }
    return true;
  }

  Future<void> connectDb() async {
    if (isPermissionsGranted) await _db.openDict();
  }

  Future<void> disconnectDb() async {
    if (isPermissionsGranted) await _db.closeDict();
  }

  Future<bool> saveWord(OneWordPair line) async {
    if (isPermissionsGranted && _db.isConnected()) {
      final res = await _db.saveWord(line);
      if (line.id == -1) {
        if (res == 0) return false;
        line = line.copyWith(id: res);
        return true;
      }
      return res == 1;
    }
    return false;
  }

  Future<int> getWordsCount() async {
    if (isPermissionsGranted && _db.isConnected()) {
      final res = await _db.getWordsCount();
      return res;
    }
    return -1;
  }

  Future<bool> deleteWordById(int id) async {
    if (isPermissionsGranted && _db.isConnected()) {
      final res = await _db.deleteWord(id);
      return res;
    }
    return false;
  }

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

  Future<List<OneWordPair>> getAllWords() async {
    if (isPermissionsGranted && _db.isConnected()) {
      final res = await _db.getAllWords();
      return res;
    }
    return <OneWordPair>[];
  }
}
