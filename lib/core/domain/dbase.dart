// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/core/model/word_translation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
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
      final bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);
    }

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE Vocabulary (id INTEGER PRIMARY KEY AUTOINCREMENT, word TEXT, translation TEXT)',
        );
        await db.execute(
          'CREATE TABLE Phrases (id INTEGER PRIMARY KEY AUTOINCREMENT, phrase TEXT, by_another_words TEXT, sentence TEXT, by_another_words_translation TEXT, sentence_translation TEXT)',
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
      final result = await _database.delete('Vocabulary', where: 'id = ?', whereArgs: [id]);
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

  Future<List<OneWord>> getAllWords() async {
    final list = await _database.rawQuery('SELECT * FROM Vocabulary');
    final allWords = <OneWord>[];
    for (final w in list) {
      allWords.add(
        OneWord(
          word: w['word']! as String,
          translate: w['translation']! as String,
        ),
      );
    }

    return allWords;
  }

  Future<int> getWordsCount() async {
    const queryStr = 'SELECT COUNT(*) FROM Vocabulary';
    final count = Sqflite.firstIntValue(await _database.rawQuery(queryStr));
    return count ?? 0;
  }

  /// ### отримати 10 слів поспіль починаючи з [initialIndex]
  /// передбачено перехід через 0, коли initialIndex під час збільшення
  /// стає більше за кількість рядків у таблиці
  Future<List<OneWordPair>> get10WordsForToday(int initialIndex) async {
    final total = await getWordsCount();
    final list = await _database.rawQuery('SELECT * FROM Vocabulary');
    final res = <OneWordPair>[];
    var index = initialIndex;
    while (res.length < 10) {
      if (index >= total - 1) index = 0;
      res.add(
        OneWordPair(
          newId: list[index]['id']! as int,
          word: list[index]['word']! as String,
          translation: list[index]['translation']! as String,
        ),
      );
      index++;
    }
    return res;
  }

  Future<Phrase> getPhraseByIndex(int index) async {
    final list = await _database.rawQuery('SELECT * FROM Phrases');
    if (list.length < index) {
      return const Phrase(
        phrase: 'phrase was not found',
        byAnotherWords: 'phrase was not found',
        sentence: 'phrase was not found',
        byAnotherWordsTranslation: 'фраза не знайдена',
        sentenceTranslation: 'фраза не знайдена',
      );
    }
    final phrase = Phrase(
      newId: list[index - 1]['id']! as int,
      phrase: list[index - 1]['phrase']! as String,
      byAnotherWords: list[index - 1]['by_another_words']! as String,
      sentence: list[index - 1]['sentence']! as String,
      byAnotherWordsTranslation: list[index - 1]['by_another_words_translation']! as String,
      sentenceTranslation: list[index - 1]['sentence_translation']! as String,
    );

    return phrase;
  }

  Future<int> getPhrasesCount() async {
    const queryStr = 'SELECT COUNT(*) FROM Phrases';
    final count = Sqflite.firstIntValue(await _database.rawQuery(queryStr));
    return count ?? 0;
  }

  Future<List<Phrase>> get10PhrasesForToday(int initialIndex) async {
    final total = await getPhrasesCount();
    final list = await _database.rawQuery('SELECT * FROM Phrases');
    final res = <Phrase>[];
    var index = initialIndex;
    while (res.length < 10) {
      if (index >= total - 1) index = 0;
      res.add(
        Phrase(
          newId: list[index]['id']! as int,
          phrase: list[index]['phrase']! as String,
          byAnotherWords: list[index]['by_another_words']! as String,
          sentence: list[index]['sentence']! as String,
          byAnotherWordsTranslation: list[index]['by_another_words_translation']! as String,
          sentenceTranslation: list[index]['sentence_translation']! as String,
        ),
      );
      index++;
    }
    return res;
  }
}
