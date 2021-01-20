
import 'dart:async';

import 'package:flutter/services.dart';

class BmobPlugin {
  static const MethodChannel _channel =
      const MethodChannel('bmob_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get installationId async {
    final String version = await _channel.invokeMethod('getInstallationId');
    return version;
  }

  static void toast(String msg) async{
    Map<String, dynamic> args = {
      "msg": msg,
    };
    await _channel.invokeMethod("showToast",args);
  }
}
