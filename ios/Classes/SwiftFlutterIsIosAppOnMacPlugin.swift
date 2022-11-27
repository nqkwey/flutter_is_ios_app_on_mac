import Flutter
import UIKit

public class SwiftFlutterIsIosAppOnMacPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_is_ios_app_on_mac", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterIsIosAppOnMacPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      var isiOSAppOnMac = false
      if #available(iOS 14.0, *) {
          isiOSAppOnMac = ProcessInfo.processInfo.isiOSAppOnMac
      }
      result(isiOSAppOnMac);
  }
}
