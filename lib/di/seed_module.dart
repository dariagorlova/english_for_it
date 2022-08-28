import 'package:injectable/injectable.dart';

@module
abstract class SeedModule {
  @Named('seed')
  int get seed {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day).millisecondsSinceEpoch;
  }

  @Named('translates_seed')
  int get translatesSeed {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day).millisecondsSinceEpoch;
  }
}
