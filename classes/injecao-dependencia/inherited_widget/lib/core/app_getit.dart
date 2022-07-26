import 'package:get_it/get_it.dart';

import 'app_model.dart';

final getIt = GetIt.I;

void setupGetIt() {
  getIt.registerSingleton<AppModel>(AppModel());
  // getIt.registerFactory(() => AppModel());
}
