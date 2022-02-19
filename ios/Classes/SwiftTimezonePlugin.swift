/// https://medium.com/flutter-community/creating-a-flutter-plugin-dialog-box-78adbff15fe
import Flutter
import UIKit

public class SwiftTimezonePlugin: NSObject, FlutterPlugin {
 public static func register(with registrar: FlutterPluginRegistrar) {
   let channel = FlutterMethodChannel(name: "/my_timezone", binaryMessenger: registrar.messenger())
   let instance = SwiftTimezonePlugin()
   registrar.addMethodCallDelegate(instance, channel: channel)
 }

 public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
   if (call.method == "getDisplayName") {
           result(TimeZone.current.localizedName(for: .standard, locale: Locale.current) ?? "Failed to get name")
       }
       else  {
           result(FlutterMethodNotImplemented)
       }
 }
}


