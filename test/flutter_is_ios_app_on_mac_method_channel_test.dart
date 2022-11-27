import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_is_ios_app_on_mac/flutter_is_ios_app_on_mac_method_channel.dart';

void main() {
  MethodChannelFlutterIsIosAppOnMac platform = MethodChannelFlutterIsIosAppOnMac();
  const MethodChannel channel = MethodChannel('flutter_is_ios_app_on_mac');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return false;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getIsIosAppOnMac(), false);
  });
}
