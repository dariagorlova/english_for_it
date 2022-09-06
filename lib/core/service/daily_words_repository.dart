import 'package:english_for_it/core/domain/dbase.dart';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/service/dbase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class DailyWordsRepository {
  DailyWordsRepository(
      //this._dbaseService,
      //@Named('seed') int seed,
      //) : _random = Random(seed);
      );

  //final DbaseService _dbaseService;
  //final Random _random;

  Future<List<OneWord>> getDailyWords() async {
    // final dbase = DbaseServiceImpl(
    //   isPermissionsGranted: await DbaseServiceImpl.checkPermissions(),
    // );
    // await dbase.connectDb();
    // final count = await dbase.getWordsCount();
    // final listIndex = <int>[];
    // while (true) {
    //   final dailyIndex = _random.nextInt(count);
    //   if (!listIndex.contains(dailyIndex)) {
    //     listIndex.add(dailyIndex);
    //   }
    //   if (listIndex.length == 10) {
    //     break;
    //   }
    // }
    // final listDailyWords = await Future.wait(
    //   Iterable.generate(10, (index) {
    //     return dbase.getWordByIndex(listIndex[index]);
    //   }),
    // );
    // await dbase.disconnectDb();
    // final list2 = <OneWord>[];
    // for (final w in listDailyWords) {
    //   list2.add(
    //     OneWord(word: w.word, translate: w.translation),
    //   );
    // }

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
}
