// lib/env/env.dart
import 'package:envied/envied.dart';

import 'i_app_config.dart';

part 'dev_env.g.dart';

@Envied(path: 'assets/env/.dev.env', obfuscate: true) //?
final class DevEnv implements IAppConfig {
  //?
  @EnviedField(varName: 'APP_TITLE')
  static final String _appTitle = _DevEnv._appTitle;

  @override
  String get appTitle => _appTitle;
}
