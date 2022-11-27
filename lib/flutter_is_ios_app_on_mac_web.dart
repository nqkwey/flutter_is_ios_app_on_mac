// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'flutter_is_ios_app_on_mac_platform_interface.dart';

/// A web implementation of the FlutterIsIosAppOnMacPlatform of the FlutterIsIosAppOnMac plugin.
class FlutterIsIosAppOnMacWeb extends FlutterIsIosAppOnMacPlatform {
  /// Constructs a FlutterIsIosAppOnMacWeb
  FlutterIsIosAppOnMacWeb();

  static void registerWith(Registrar registrar) {
    FlutterIsIosAppOnMacPlatform.instance = FlutterIsIosAppOnMacWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<bool?> getIsIosAppOnMac() async {
    return false;
  }
}
