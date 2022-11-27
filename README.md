# flutter_is_ios_app_on_mac

Check if this is an iOS app executed on a mac. Use this package if you want to know if someone uses your iOS flutter app on a mac (with silicon M1 / M2 chip).

## Usage

There is only one function in the whole package: 

    Future<bool> FlutterIsIosAppOnMac.isIosAppOnMac()

This static function will return true, if this is an ios app executed on a mac. It will return false in all of the following cases:
- If this is a flutter web application
- If the platform is Android, Linux, Windows, or whatever
- If the platform is macos and the app is executed as macos app (it will only return true if the app is executed *as* iOS app on the macos system - not if it is used as regular mac app)

You can also check our example script, which shows how to use the plugin in an app. 
