import 'package:flutter/services.dart';

/// A Flutter plugin for displaying the FreeDroidWarn alert dialog on Android.
///
/// This plugin shows a warning dialog informing users about Google's upcoming
/// developer verification requirement (starting 2026/2027), which will affect
/// apps whose developers do not agree to submit personal identity details to
/// Google.
///
/// Based on https://github.com/woheller69/FreeDroidWarn
class FreeDroidWarn {
  static const MethodChannel _channel = MethodChannel('free_droid_warn');

  /// Shows the FreeDroidWarn warning dialog if the app has been upgraded to a
  /// new version since the dialog was last shown.
  ///
  /// The dialog is displayed at most once per app version (identified by
  /// [buildVersion]). After the user taps OK, the current [buildVersion] is
  /// saved in shared preferences, and the dialog will not appear again until a
  /// higher [buildVersion] is provided.
  ///
  /// [buildVersion] should be your app's current version code
  /// (e.g. `PackageInfo.buildNumber` parsed as an integer, or
  /// `BuildConfig.VERSION_CODE` on Android).
  ///
  /// Throws a [PlatformException] if the native call fails.
  static Future<void> showWarningOnUpgrade(int buildVersion) {
    return _channel.invokeMethod('showWarningOnUpgrade', {
      'buildVersion': buildVersion,
    });
  }
}
