// lib/env/env.dart
import 'package:architecture_template_v2/product/init/env/manager/i_app_config.dart';
import 'package:envied/envied.dart';

part 'prod_env.g.dart';

@Envied(path: 'assets/env/.prod.env', obfuscate: true) //?
final class ProdEnv implements IAppConfig {
  //?
  @EnviedField(varName: 'APP_TITLE')
  static final String _appTitle = _ProdEnv._appTitle;

  @override
  String get appTitle => _appTitle;
}
