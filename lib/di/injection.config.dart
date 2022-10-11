// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/domain/dbase.dart' as _i5;
import '../core/model/one_word.dart' as _i11;
import '../core/model/phrase.dart' as _i16;
import '../core/service/daily_repository.dart' as _i4;
import '../core/service/dbase_service.dart' as _i6;
import '../core/service/navigator.dart' as _i7;
import '../core/service/vocabulary.dart' as _i14;
import '../features/phrases/phrases_learning_screen/cubit/phrases_cubit.dart'
    as _i12;
import '../features/phrases/phrases_testing_screen/cubit/phrases_testing_cubit.dart'
    as _i15;
import '../features/start_screen/search_word/cubit/search_cubit.dart' as _i13;
import '../features/start_screen/verb_data.dart' as _i8;
import '../features/words/learning_screen/cubit/learning_cubit.dart' as _i9;
import '../features/words/make_pair_screen/cubit/pairs_cubit.dart' as _i10;
import '../features/words/testing_screen.dart/cubit/testing_cubit.dart' as _i17;
import '../routes/app_router.dart' as _i3;
import 'seed_module.dart' as _i18;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final seedModule = _$SeedModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.factory<_i4.DailyRepository>(() => _i4.DailyRepository());
  gh.factory<_i5.DbStorage>(() => _i5.DbStorage());
  gh.factory<_i6.DbaseService>(
    () => _i6.DbaseServiceImpl(
      isPermissionsGranted: get<bool>(),
      db: get<_i5.DbStorage>(),
    ),
    registerFor: {_prod},
  );
  gh.factory<_i7.EnglishNavigator>(
      () => _i7.EnglishNavigator(get<_i3.AppRouter>()));
  gh.lazySingleton<_i8.IrregularVerbs>(() => _i8.IrregularVerbs());
  gh.factory<_i9.LearningCubit>(
      () => _i9.LearningCubit(get<_i4.DailyRepository>()));
  gh.factoryParam<_i10.PairsCubit, List<_i11.OneWord>, dynamic>((
    words,
    _,
  ) =>
      _i10.PairsCubit(words));
  gh.factory<_i12.PhrasesCubit>(
      () => _i12.PhrasesCubit(get<_i4.DailyRepository>()));
  gh.factory<_i13.SearchCubit>(() => _i13.SearchCubit(
        get<_i4.DailyRepository>(),
        get<_i7.EnglishNavigator>(),
      ));
  gh.lazySingleton<_i14.Vocabulary>(() => _i14.Vocabulary());
  gh.factory<int>(
    () => seedModule.seed,
    instanceName: 'seed',
  );
  gh.factory<int>(
    () => seedModule.translatesSeed,
    instanceName: 'translates_seed',
  );
  gh.factoryParam<_i15.PhrasesTestingCubit, List<_i16.Phrase>, dynamic>((
    phrases,
    _,
  ) =>
      _i15.PhrasesTestingCubit(
        get<int>(instanceName: 'translates_seed'),
        phrases,
      ));
  gh.factoryParam<_i17.TestingCubit, List<_i11.OneWord>, int>((
    words,
    variantENtoUA,
  ) =>
      _i17.TestingCubit(
        get<int>(instanceName: 'translates_seed'),
        words,
        variantENtoUA,
      ));
  return get;
}

class _$SeedModule extends _i18.SeedModule {}
