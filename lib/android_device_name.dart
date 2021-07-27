
import 'dart:async';

import 'package:flutter/services.dart';

class AndroidDeviceName {
  static const MethodChannel _channel =
      const MethodChannel('android_device_name');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
