import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_is_ios_app_on_mac/flutter_is_ios_app_on_mac.dart';
import 'package:flutter_is_ios_app_on_mac/flutter_is_ios_app_on_mac_platform_interface.dart';
import 'package:flutter_is_ios_app_on_mac/flutter_is_ios_app_on_mac_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIsIosAppOnMacPlatform
    with MockPlatformInterfaceMixin
    implements FlutterIsIosAppOnMacPlatform {

  @override
  Future<bool?> getIsIosAppOnMac() async {
    return false;
  }
}

void main() {
  final FlutterIsIosAppOnMacPlatform initialPlatform = FlutterIsIosAppOnMacPlatform.instance;

  test('$MethodChannelFlutterIsIosAppOnMac is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIsIosAppOnMac>());
  });

  test('getPlatformVersion', () async {
    MockFlutterIsIosAppOnMacPlatform fakePlatform = MockFlutterIsIosAppOnMacPlatform();
    FlutterIsIosAppOnMacPlatform.instance = fakePlatform;

    expect(await FlutterIsIosAppOnMac.isIosAppOnMac(), false);
  });
}
