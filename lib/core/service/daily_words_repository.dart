import 'package:english_for_it/core/domain/dbase.dart';
import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/service/dbase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class DailyWordsRepository {
  DailyWordsRepository();

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
}
