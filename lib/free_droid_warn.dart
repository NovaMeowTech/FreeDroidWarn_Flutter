import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'src/free_droid_warn_localizations.dart';

export 'src/free_droid_warn_localizations.dart' show FreeDroidWarnStrings;

/// A Flutter plugin for displaying the FreeDroidWarn alert dialog.
///
/// This plugin shows a warning dialog informing users about Google's upcoming
/// developer verification requirement (starting 2026/2027), which will affect
/// apps whose developers do not agree to submit personal identity details to
/// Google.
///
/// Based on https://github.com/woheller69/FreeDroidWarn
class FreeDroidWarn {
  static const String _prefKey = 'versionCodeWarn';
  static const String _detailsUrl = 'https://keepandroidopen.org';
  static const String _solutionUrl =
      'https://github.com/woheller69/FreeDroidWarn?tab=readme-ov-file#solutions';

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
  /// The dialog text and button labels are automatically shown in the device
  /// language when a translation is available. Supported languages: Arabic,
  /// Czech, German, Greek, English, Spanish, French, Hindi, Hungarian,
  /// Indonesian, Italian, Japanese, Korean, Dutch, Polish, Portuguese, Russian,
  /// Slovak, Swedish, Turkish, Chinese Simplified, and Chinese Traditional.
  /// Falls back to English for other languages.
  static Future<void> showWarningOnUpgrade(
      BuildContext context, int buildVersion) async {
    final prefs = await SharedPreferences.getInstance();
    final storedVersion = prefs.getInt(_prefKey) ?? 0;

    if (buildVersion <= storedVersion) return;
    if (!context.mounted) return;

    final strings = FreeDroidWarnLocalizations.of(context);

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          content: Text(strings.warning),
          actions: [
            TextButton(
              onPressed: () async {
                final uri = Uri.parse(_detailsUrl);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
              child: Text(strings.details),
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () async {
                final uri = Uri.parse(_solutionUrl);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
              child: Text(strings.solution),
            ),
            TextButton(
              onPressed: () async {
                await prefs.setInt(_prefKey, buildVersion);
                if (dialogContext.mounted) {
                  Navigator.of(dialogContext).pop();
                }
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
