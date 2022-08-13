// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:translator/translator.dart' as _i3;

import '../core/model/one_word.dart' as _i5;
import '../core/service/daily_words_repository.dart' as _i7;
import '../core/service/vocabulary.dart' as _i6;
import '../features/learning_screen/cubit/learning_cubit.dart' as _i8;
import '../features/testing_screen.dart/cubit/testing_cubit.dart' as _i4;
import 'google_translator_module.dart' as _i9;
import 'seed_module.dart' as _i10;

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
  gh.factoryParam<_i4.TestingCubit, List<_i5.OneWord>, int>(
      (words, variantENtoUA) => _i4.TestingCubit(words, variantENtoUA));
  gh.lazySingleton<_i6.Vocabulary>(() => _i6.Vocabulary());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<_i7.DailyWordsRepository>(() => _i7.DailyWordsRepository(
      get<_i6.Vocabulary>(),
      get<_i3.GoogleTranslator>(),
      get<int>(instanceName: 'seed')));
  gh.factory<_i8.LearningCubit>(
      () => _i8.LearningCubit(get<_i7.DailyWordsRepository>()));
  return get;
}

class _$GoogleTranslatorModule extends _i9.GoogleTranslatorModule {}

class _$SeedModule extends _i10.SeedModule {}
