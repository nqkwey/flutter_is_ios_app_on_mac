#ifndef FLUTTER_PLUGIN_FLUTTER_IS_IOS_APP_ON_MAC_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_IS_IOS_APP_ON_MAC_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_is_ios_app_on_mac {

class FlutterIsIosAppOnMacPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterIsIosAppOnMacPlugin();

  virtual ~FlutterIsIosAppOnMacPlugin();

  // Disallow copy and assign.
  FlutterIsIosAppOnMacPlugin(const FlutterIsIosAppOnMacPlugin&) = delete;
  FlutterIsIosAppOnMacPlugin& operator=(const FlutterIsIosAppOnMacPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_is_ios_app_on_mac

#endif  // FLUTTER_PLUGIN_FLUTTER_IS_IOS_APP_ON_MAC_PLUGIN_H_
