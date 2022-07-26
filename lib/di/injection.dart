import 'package:english_for_it/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
GetIt configureInjection() {
  return $initGetIt(
    getIt,
  );
}
