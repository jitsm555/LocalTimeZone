import 'package:flutter/services.dart';

class LocalTimeZone {
  static const MethodChannel _platform = MethodChannel('/my_timezone');

  static Future<String> getLocalTimeZone() async {
    String displayName = "";
    try {
      displayName = await _platform.invokeMethod('getDisplayName');
    } on PlatformException catch (e) {
      displayName = "Failed to get display name: '${e.message}'.";
    } on MissingPluginException catch (e) {
      displayName = "Plugin Exception '${e.message}";
    }
    return displayName;
  }
}
