# wikired_alerts_demo

Lot of helpers of alerts with and without context


[![pub package](https://img.shields.io/badge/PUB-1.0.0-blue)](https://pub.dev/packages/wikired_alerts)

A library that provides a lot of options of alerts with and without context.

|             | Android | iOS   | Linux | macOS  | Web | Windows     |
|-------------|---------|-------|-------|--------|-----|-------------|
| **Support** | SDK 16+ | 11.0+ | Any   | 10.11+ | Any | Windows 10+ |


## Features
  - Quick Alert helpers
  - Get.SnackBar helpers
  - Native snackbar helpers
  - Toastification helpers

## Usage

### Getting started

1) add `wikired_alerts` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).


```yaml
dependencies:

  wikired_alerts:
    git:
      url: https://github.com/LuisCarrizo/wikired_alerts.git
```

2) **import package**

```
import 'package:wikired_alerts/wikired_alerts.dart';
```

3) **initialice a ```GlobalKey<NavigatorState>```**

```main.dart
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
```

4) **initialice package Class with the navigatorKey**

```
final wra = WrAlerts(navigatorKey);
```

5) **Use as you will**

```
wra.qaOk('Process is finished');
```


## Examples

[TODO]

## Screen widgets

[TODO]

## Aditional Info

 lista de iconos
 https://fonts.google.com/icons?selected=Material+Icons:pan_tool:


## License
MIT License

## Donation
If you would like to contribute to my work, you can [donate via PayPal](https://paypal.me/wikired ).

