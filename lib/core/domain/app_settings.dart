//import 'package:english_for_it/di/shared_preferences_module.dart';
import 'package:english_for_it/core/domain/shared_prefs_helper.dart';

abstract class AppField {
  static const _dateKey = 'date_key';
  static const _indexKey = 'index_key';
}

class AppDataProvider {
  String? getDate() {
    final prefs = SharedPrefs.instance;
    return prefs.getString(AppField._dateKey);
  }

  Future<void> saveDate(String value) async {
    final prefs = SharedPrefs.instance;
    await prefs.setString(AppField._dateKey, value);
  }

  int? getIndex() {
    final prefs = SharedPrefs.instance;
    return prefs.getInt(AppField._indexKey);
  }

  Future<void> saveIndex(int value) async {
    final prefs = SharedPrefs.instance;
    await prefs.setInt(AppField._indexKey, value);
  }
}
