// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:translator/translator.dart' as _i6;

import '../core/domain/dbase.dart' as _i5;
import '../core/model/one_word.dart' as _i9;
import '../core/service/daily_words_repository.dart' as _i3;
import '../core/service/dbase_service.dart' as _i4;
import '../core/service/vocabulary.dart' as _i10;
import '../features/learning_screen/cubit/learning_cubit.dart' as _i7;
import '../features/make_pair_screen/cubit/pairs_cubit.dart' as _i8;
import '../features/testing_screen.dart/cubit/testing_cubit.dart' as _i11;
import 'google_translator_module.dart' as _i12;
import 'seed_module.dart' as _i13;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final googleTranslatorModule = _$GoogleTranslatorModule();
  final seedModule = _$SeedModule();
  gh.factory<_i3.DailyWordsRepository>(() => _i3.DailyWordsRepository());
  gh.factory<_i4.DbaseService>(
      () => _i4.DbaseServiceImpl(
          isPermissionsGranted: get<bool>(), db: get<_i5.DbStorage>()),
      registerFor: {_prod});
  gh.factory<_i6.GoogleTranslator>(
      () => googleTranslatorModule.googleTranslator,
      registerFor: {_prod});
  gh.factory<_i7.LearningCubit>(
      () => _i7.LearningCubit(get<_i3.DailyWordsRepository>()));
  gh.factoryParam<_i8.PairsCubit, List<_i9.OneWord>, dynamic>(
      (words, _) => _i8.PairsCubit(words));
  gh.lazySingleton<_i10.Vocabulary>(() => _i10.Vocabulary());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<int>(() => seedModule.translatesSeed,
      instanceName: 'translates_seed');
  gh.factoryParam<_i11.TestingCubit, List<_i9.OneWord>, int>(
      (words, variantENtoUA) => _i11.TestingCubit(
          get<int>(instanceName: 'translates_seed'), words, variantENtoUA));
  return get;
}

class _$GoogleTranslatorModule extends _i12.GoogleTranslatorModule {}

class _$SeedModule extends _i13.SeedModule {}
