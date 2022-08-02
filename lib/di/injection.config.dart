// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:translator/translator.dart' as _i3;

import '../core/service/daily_words_repository.dart' as _i5;
import '../core/service/vocabulary.dart' as _i4;
import '../features/learning_screen/cubit/learning_cubit.dart' as _i6;
import 'google_translator_module.dart' as _i7;
import 'seed_module.dart' as _i8;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final googleTranslatorModule = _$GoogleTranslatorModule();
  final seedModule = _$SeedModule();
  gh.factory<_i3.GoogleTranslator>(
      () => googleTranslatorModule.googleTranslator,
      registerFor: {_prod});
  gh.lazySingleton<_i4.Vocabulary>(() => _i4.Vocabulary());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<_i5.DailyWordsRepository>(() => _i5.DailyWordsRepository(
      get<_i4.Vocabulary>(),
      get<_i3.GoogleTranslator>(),
      get<int>(instanceName: 'seed')));
  gh.factory<_i6.LearningCubit>(
      () => _i6.LearningCubit(get<_i5.DailyWordsRepository>()));
  return get;
}

class _$GoogleTranslatorModule extends _i7.GoogleTranslatorModule {}

class _$SeedModule extends _i8.SeedModule {}
