// lib/env/env.dart
 import 'package:envied/envied.dart';

import 'i_app_config.dart';

part 'prod_env.g.dart';

@Envied(path: 'assets/env/.prod.env', obfuscate: true) //?
final class ProdEnv implements IAppConfig {
  //?
  @EnviedField(varName: 'APP_TITLE')
  static final String _appTitle = _ProdEnv._appTitle;

  @override
  String get appTitle => _appTitle;
}
