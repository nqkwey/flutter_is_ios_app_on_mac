import 'package:flutter/foundation.dart';
import 'dart:io' show Platform;
import 'flutter_is_ios_app_on_mac_platform_interface.dart';

class FlutterIsIosAppOnMac {
  static Future<bool> isIosAppOnMac() async {
    if(
      kIsWeb
      || !Platform.isIOS
    ){
      return false;
    }else{
      bool? isIosAppOnMac = await FlutterIsIosAppOnMacPlatform.instance.getIsIosAppOnMac();
      return isIosAppOnMac!;
    }
  }
}
