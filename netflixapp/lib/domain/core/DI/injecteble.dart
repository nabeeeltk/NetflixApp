
 import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injecteble.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configerInjection() async {
  await $initGetIt(getIt, environment: Environment.prod);
}