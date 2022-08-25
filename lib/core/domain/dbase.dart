import 'dart:io';
import 'package:english_for_it/core/model/word_translation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

class DbStorage {
  late Database _database;

  /// initiation _database
  Future<void> openDict() async {
    final databasesPath = await getDatabasesPath();
    final path = '$databasesPath/dictionary.db';
    final exists = await databaseExists(path);
    if (!exists) {
      try {
        await Directory(databasesPath).create(recursive: true);
      } catch (_) {
        debugPrint('WRITE_EXTERNAL_STORAGE/READ_EXTERNAL_STORAGE wanted');
      }
      // copy from assets initial base
      final data = await rootBundle.load('assets/dictionary.db');
      final bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);
    }

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE Vocabulary (id INTEGER PRIMARY KEY AUTOINCREMENT, word TEXT, translation TEXT)',
        );
      },
      onConfigure: (Database db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
    );
  }

  Future<void> closeDict() async {
    if (_database.isOpen) {
      await _database.close();
    }
  }

  bool isConnected() => _database.isOpen;

  /// ### save word to base
  /// return [int]<br>
  ///   = 1, if line.id > 0<br>
  ///   = number - id record in db, if line.id == -1<br>
  ///   = 0 - error<br>
  Future<int> saveWord(OneWordPair line) async {
    var result = -1;
    if (line.id != -1) {
      // [result] = 1, if data has been updated
      result = await _database.update(
        'Vocabulary',
        line.toMap(),
        where: 'id = ?',
        whereArgs: [line.id],
      );
    } else {
      // [result] = new ID (or 0, if error)
      result = await _database.insert('Vocabulary', line.toMap());
    }
    return result;
  }

  Future<bool> deleteWord(int id) async {
    if (id != -1) {
      final result = await _database
          .delete('Vocabulary', where: 'id = ?', whereArgs: [id]);
      if (result != 0) return true;
    }
    return false;
  }

  Future<OneWordPair> getWordByIndex(int index) async {
    final list = await _database.rawQuery('SELECT * FROM Vocabulary');
    if (list.length < index) {
      return OneWordPair(
        newId: -1,
        word: 'word was not found',
        translation: 'слово не знайдено',
      );
    }
    final word = OneWordPair(
      newId: list[index - 1]['id']! as int,
      word: list[index - 1]['word']! as String,
      translation: list[index - 1]['translation']! as String,
    );

    return word;
  }

  Future<List<OneWordPair>> getAllWords() async {
    final list = await _database.rawQuery('SELECT * FROM Vocabulary');
    final listPairs = <OneWordPair>[];
    for (final w in list) {
      listPairs.add(
        OneWordPair(
          word: w['word'].toString(),
          translation: w['translation'].toString(),
        ),
      );
    }
    return listPairs;
  }

  Future<int> getWordsCount() async {
    const queryStr = 'SELECT COUNT(*) FROM Vocabulary';
    final count = Sqflite.firstIntValue(await _database.rawQuery(queryStr));
    return count ?? 0;
  }
}
