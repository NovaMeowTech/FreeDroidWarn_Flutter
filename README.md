# FreeDroidWarn_Flutter

A Flutter plugin that displays a warning dialog informing users about Google's
upcoming developer verification requirement (starting 2026/2027).

Based on the [FreeDroidWarn](https://github.com/woheller69/FreeDroidWarn) Android library.

## Platform support

| Android | iOS | macOS | Web | Linux | Windows |
|:-------:|:---:|:-----:|:---:|:-----:|:-------:|
|    ✅    |  ❌  |  ❌   |  ❌  |  ❌   |   ❌    |

## What it does

Shows an alert dialog once per app version with the following message:

> Google has announced that, starting in 2026/2027, all apps on certified
> Android devices will require the developer to submit personal identity details
> directly to Google. Since the developers of this app do not agree to this
> requirement, this app will no longer work on certified Android devices after
> that time.

The dialog provides three buttons:
- **OK** – dismisses the dialog and saves the current version code so the dialog
  is not shown again until the app is upgraded.
- **Details** – opens [keepandroidopen.org](https://keepandroidopen.org) in the
  browser.
- **Solution** – opens the FreeDroidWarn README (Solutions section) in the
  browser, highlighted in red.

See [Keep Android Open](https://keepandroidopen.org/) for more information.

## Usage

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  free_droid_warn: ^1.0.0
```

Call `showWarningOnUpgrade` in your app's initialisation code (e.g. `initState`
of your root widget), passing your current version code:

```dart
import 'package:free_droid_warn/free_droid_warn.dart';

// In your widget's initState or main():
FreeDroidWarn.showWarningOnUpgrade(buildVersionCode);
```

The dialog is shown at most once per unique `buildVersionCode` value. After the
user taps **OK** the version code is persisted in shared preferences; the dialog
will appear again only when a higher version code is provided.

### Getting the version code

You can use the [`package_info_plus`](https://pub.dev/packages/package_info_plus)
package to obtain the build number at runtime:

```dart
import 'package:package_info_plus/package_info_plus.dart';
import 'package:free_droid_warn/free_droid_warn.dart';

final packageInfo = await PackageInfo.fromPlatform();
final buildNumber = int.tryParse(packageInfo.buildNumber) ?? 0;
await FreeDroidWarn.showWarningOnUpgrade(buildNumber);
```

## License

Apache License 2.0 – see [LICENSE](LICENSE).