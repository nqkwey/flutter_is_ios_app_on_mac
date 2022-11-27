import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_is_ios_app_on_mac_platform_interface.dart';

/// An implementation of [FlutterIsIosAppOnMacPlatform] that uses method channels.
class MethodChannelFlutterIsIosAppOnMac extends FlutterIsIosAppOnMacPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_is_ios_app_on_mac');

  @override
  Future<bool?> getIsIosAppOnMac() async {
    final isIosAppOnMac = await methodChannel.invokeMethod<bool>('getIsIosAppOnMac');
    return isIosAppOnMac;
  }
}
