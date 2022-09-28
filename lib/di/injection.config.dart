// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/domain/dbase.dart' as _i5;
import '../core/model/one_word.dart' as _i9;
import '../core/model/phrase.dart' as _i14;
import '../core/service/daily_repository.dart' as _i3;
import '../core/service/dbase_service.dart' as _i4;
import '../core/service/vocabulary.dart' as _i12;
import '../features/phrases/phrases_learning_screen/cubit/phrases_cubit.dart'
    as _i10;
import '../features/phrases/phrases_testing_screen/cubit/phrases_testing_cubit.dart'
    as _i13;
import '../features/start_screen/search_word/cubit/search_cubit.dart' as _i11;
import '../features/start_screen/verb_data.dart' as _i6;
import '../features/words/learning_screen/cubit/learning_cubit.dart' as _i7;
import '../features/words/make_pair_screen/cubit/pairs_cubit.dart' as _i8;
import '../features/words/testing_screen.dart/cubit/testing_cubit.dart' as _i15;
import 'seed_module.dart' as _i16;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final seedModule = _$SeedModule();
  gh.factory<_i3.DailyRepository>(() => _i3.DailyRepository());
  gh.factory<_i4.DbaseService>(
      () => _i4.DbaseServiceImpl(
          isPermissionsGranted: get<bool>(), db: get<_i5.DbStorage>()),
      registerFor: {_prod});
  gh.lazySingleton<_i6.IrregularVerbs>(() => _i6.IrregularVerbs());
  gh.factory<_i7.LearningCubit>(
      () => _i7.LearningCubit(get<_i3.DailyRepository>()));
  gh.factoryParam<_i8.PairsCubit, List<_i9.OneWord>, dynamic>(
      (words, _) => _i8.PairsCubit(words));
  gh.factory<_i10.PhrasesCubit>(
      () => _i10.PhrasesCubit(get<_i3.DailyRepository>()));
  gh.factory<_i11.SearchCubit>(
      () => _i11.SearchCubit(get<_i3.DailyRepository>()));
  gh.lazySingleton<_i12.Vocabulary>(() => _i12.Vocabulary());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<int>(() => seedModule.translatesSeed,
      instanceName: 'translates_seed');
  gh.factoryParam<_i13.PhrasesTestingCubit, List<_i14.Phrase>, dynamic>(
      (phrases, _) => _i13.PhrasesTestingCubit(
          get<int>(instanceName: 'translates_seed'), phrases));
  gh.factoryParam<_i15.TestingCubit, List<_i9.OneWord>, int>(
      (words, variantENtoUA) => _i15.TestingCubit(
          get<int>(instanceName: 'translates_seed'), words, variantENtoUA));
  return get;
}

class _$SeedModule extends _i16.SeedModule {}
