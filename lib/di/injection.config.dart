// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/service/daily_words_repository.dart' as _i4;
import '../core/service/vocabulary.dart' as _i3;
import 'seed_module.dart' as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final seedModule = _$SeedModule();
  gh.lazySingleton<_i3.Vocabulary>(() => _i3.Vocabulary());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<int>(() => seedModule.randomSeed, instanceName: 'randomSeed');
  gh.factory<_i4.DailyWordsRepository>(() => _i4.DailyWordsRepository(
      get<_i3.Vocabulary>(), get<int>(instanceName: 'seed')));
  return get;
}

class _$SeedModule extends _i5.SeedModule {}
