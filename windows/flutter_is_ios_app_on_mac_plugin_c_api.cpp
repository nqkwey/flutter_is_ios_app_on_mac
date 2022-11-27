#include "include/flutter_is_ios_app_on_mac/flutter_is_ios_app_on_mac_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_is_ios_app_on_mac_plugin.h"

void FlutterIsIosAppOnMacPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_is_ios_app_on_mac::FlutterIsIosAppOnMacPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
