import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/services.dart';

//Init Process
@immutable
final class AppInit {
  const AppInit._();
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized(); //?
    await EasyLocalization.ensureInitialized(); //?
    //only error logs
    EasyLocalization.logger.enableLevels = [LevelMessages.error];

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); //?

    

     
  }
}
