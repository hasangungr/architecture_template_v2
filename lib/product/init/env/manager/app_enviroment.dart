 import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

 
final class AppEnviroment {
  AppEnviroment.init() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final IAppConfig _config;

  static String get appTitle => _config.appTitle;
}
