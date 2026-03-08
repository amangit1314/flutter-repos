import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void setupDependency() {
  $initGetIt(getIt, environment: Environment.prod);
}
