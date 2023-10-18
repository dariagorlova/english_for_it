// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:english_for_it/core/domain/dbase.dart' as _i5;
import 'package:english_for_it/core/model/one_word.dart' as _i11;
import 'package:english_for_it/core/model/phrase.dart' as _i17;
import 'package:english_for_it/core/service/daily_repository.dart' as _i4;
import 'package:english_for_it/core/service/dbase_service.dart' as _i6;
import 'package:english_for_it/core/service/navigator.dart' as _i7;
import 'package:english_for_it/core/service/vocabulary.dart' as _i15;
import 'package:english_for_it/di/seed_module.dart' as _i19;
import 'package:english_for_it/features/phrases/phrases_learning_screen/cubit/phrases_cubit.dart'
    as _i12;
import 'package:english_for_it/features/phrases/phrases_testing_screen/cubit/phrases_testing_cubit.dart'
    as _i16;
import 'package:english_for_it/features/start_screen/search_word/cubit/search_cubit.dart'
    as _i13;
import 'package:english_for_it/features/start_screen/search_word/cubit/start_cubit.dart'
    as _i14;
import 'package:english_for_it/features/start_screen/verb_data.dart' as _i8;
import 'package:english_for_it/features/words/learning_screen/cubit/learning_cubit.dart'
    as _i9;
import 'package:english_for_it/features/words/make_pair_screen/cubit/pairs_cubit.dart'
    as _i10;
import 'package:english_for_it/features/words/testing_screen.dart/cubit/testing_cubit.dart'
    as _i18;
import 'package:english_for_it/routes/app_router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final seedModule = _$SeedModule();
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.DailyRepository>(() => _i4.DailyRepository());
    gh.factory<_i5.DbStorage>(() => _i5.DbStorage());
    gh.factory<_i6.DbaseService>(
      () => _i6.DbaseServiceImpl(
        isPermissionsGranted: gh<bool>(),
        db: gh<_i5.DbStorage>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i7.EnglishNavigator>(
        () => _i7.EnglishNavigator(gh<_i3.AppRouter>()));
    gh.lazySingleton<_i8.IrregularVerbs>(() => _i8.IrregularVerbs());
    gh.factory<_i9.LearningCubit>(() => _i9.LearningCubit(
          gh<_i4.DailyRepository>(),
          gh<_i7.EnglishNavigator>(),
        ));
    gh.factoryParam<_i10.PairsCubit, List<_i11.OneWord>, dynamic>((
      words,
      _,
    ) =>
        _i10.PairsCubit(
          words,
          gh<_i7.EnglishNavigator>(),
        ));
    gh.factory<_i12.PhrasesCubit>(() => _i12.PhrasesCubit(
          gh<_i4.DailyRepository>(),
          gh<_i7.EnglishNavigator>(),
        ));
    gh.factory<_i13.SearchCubit>(() => _i13.SearchCubit(
          gh<_i4.Repository>(),
          gh<_i7.EnglishNavigator>(),
        ));
    gh.factory<_i14.StartCubit>(
        () => _i14.StartCubit(gh<_i7.EnglishNavigator>()));
    gh.lazySingleton<_i15.Vocabulary>(() => _i15.Vocabulary());
    gh.factory<int>(
      () => seedModule.seed,
      instanceName: 'seed',
    );
    gh.factory<int>(
      () => seedModule.translatesSeed,
      instanceName: 'translates_seed',
    );
    gh.factoryParam<_i16.PhrasesTestingCubit, List<_i17.Phrase>, dynamic>((
      phrases,
      _,
    ) =>
        _i16.PhrasesTestingCubit(
          gh<int>(instanceName: 'translates_seed'),
          phrases,
          gh<_i7.EnglishNavigator>(),
        ));
    gh.factoryParam<_i18.TestingCubit, List<_i11.OneWord>, int>((
      words,
      variantENtoUA,
    ) =>
        _i18.TestingCubit(
          gh<int>(instanceName: 'translates_seed'),
          words,
          variantENtoUA,
          gh<_i7.EnglishNavigator>(),
        ));
    return this;
  }
}

class _$SeedModule extends _i19.SeedModule {}
