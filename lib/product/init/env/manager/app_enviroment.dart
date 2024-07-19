import 'package:architecture_template_v2/product/init/env/dev_env.dart';
import 'package:architecture_template_v2/product/init/env/prod_env.dart';
import 'package:flutter/foundation.dart';

import 'i_app_config.dart';

final class AppEnviroment {
  AppEnviroment.init() {
    _config = !kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final IAppConfig _config;

  static String get appTitle => _config.appTitle;
}
