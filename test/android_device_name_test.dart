import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_device_name/android_device_name.dart';

void main() {
  const MethodChannel channel = MethodChannel('android_device_name');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AndroidDeviceName.platformVersion, '42');
  });
}
