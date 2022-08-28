import 'dart:math';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/service/dbase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class DailyWordsRepository {
  DailyWordsRepository(
    this._dbaseService,
    @Named('seed') int seed,
  ) : _random = Random(seed);

  final DbaseService _dbaseService;
  final Random _random;

  Future<List<OneWord>> getDailyWords() async {
    await _dbaseService.connectDb();
    final count = await _dbaseService.getWordsCount();

    final listIndex = <int>[];
    while (true) {
      final dailyIndex = _random.nextInt(count);
      if (!listIndex.contains(dailyIndex)) {
        listIndex.add(dailyIndex);
      }
      if (listIndex.length == 10) {
        break;
      }
    }

    final listDailyWords = await Future.wait(
      Iterable.generate(10, (index) {
        return _dbaseService.getWordByIndex(listIndex[index]);
      }),
    );

    await _dbaseService.disconnectDb();

    final list2 = <OneWord>[];
    for (final w in listDailyWords) {
      list2.add(
        OneWord(word: w.word, translate: w.translation),
      );
    }

    return list2;
  }
}
