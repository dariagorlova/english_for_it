// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:translator/translator.dart' as _i4;

import '../core/model/one_word.dart' as _i6;
import '../core/service/daily_words_repository.dart' as _i8;
import '../core/service/dbase_service.dart' as _i3;
import '../core/service/vocabulary.dart' as _i7;
import '../features/learning_screen/cubit/learning_cubit.dart' as _i9;
import '../features/make_pair_screen/cubit/pairs_cubit.dart' as _i5;
import '../features/testing_screen.dart/cubit/testing_cubit.dart' as _i10;
import 'google_translator_module.dart' as _i11;
import 'seed_module.dart' as _i12;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final googleTranslatorModule = _$GoogleTranslatorModule();
  final seedModule = _$SeedModule();
  gh.factory<_i3.DbaseService>(
      () => _i3.DbaseServiceImpl(isPermissionsGranted: get<bool>()),
      registerFor: {_prod});
  gh.factory<_i4.GoogleTranslator>(
      () => googleTranslatorModule.googleTranslator,
      registerFor: {_prod});
  gh.factoryParam<_i5.PairsCubit, List<_i6.OneWord>, dynamic>(
      (words, _) => _i5.PairsCubit(words));
  gh.lazySingleton<_i7.Vocabulary>(() => _i7.Vocabulary());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<int>(() => seedModule.translatesSeed,
      instanceName: 'translates_seed');
  gh.factory<_i8.DailyWordsRepository>(() => _i8.DailyWordsRepository(
      get<_i3.DbaseService>(), get<int>(instanceName: 'seed')));
  gh.factory<_i9.LearningCubit>(
      () => _i9.LearningCubit(get<_i8.DailyWordsRepository>()));
  gh.factoryParam<_i10.TestingCubit, List<_i6.OneWord>, int>(
      (words, variantENtoUA) => _i10.TestingCubit(
          get<int>(instanceName: 'translates_seed'), words, variantENtoUA));
  return get;
}

class _$GoogleTranslatorModule extends _i11.GoogleTranslatorModule {}

class _$SeedModule extends _i12.SeedModule {}
