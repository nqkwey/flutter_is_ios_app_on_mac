import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_is_ios_app_on_mac_method_channel.dart';

abstract class FlutterIsIosAppOnMacPlatform extends PlatformInterface {
  /// Constructs a FlutterIsIosAppOnMacPlatform.
  FlutterIsIosAppOnMacPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIsIosAppOnMacPlatform _instance = MethodChannelFlutterIsIosAppOnMac();

  /// The default instance of [FlutterIsIosAppOnMacPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIsIosAppOnMac].
  static FlutterIsIosAppOnMacPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIsIosAppOnMacPlatform] when
  /// they register themselves.
  static set instance(FlutterIsIosAppOnMacPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> getIsIosAppOnMac() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
