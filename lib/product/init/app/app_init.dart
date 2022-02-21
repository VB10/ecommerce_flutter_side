import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';

class AppInitiliaze {
  Future<void> initBeforeAppStart() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    _closeLocalization();
  }

  void _closeLocalization() {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.warning];
  }
}
