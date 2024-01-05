# base_ui_m3

Ini adalah aplikasi flutter dalam pembuatan ui mengacu pada base themeData dari flutter material sendiri dari penggunaan textStyle sampai pemiligan warna diambil dari themeData default


```dart
import 'package:flutter/material.dart';

/// function to get textStyle
TextTheme appFont(BuildContext context) {
  var data = Theme.of(context).textTheme;
  return data;
}

/// function to get Color
ColorApp appColor(BuildContext context) {
  var scheme = Theme.of(context).colorScheme;
  var theme = Theme.of(context);
  return ColorApp(
    useScheme: scheme,
    useThemeData: theme,
  );
}

/// class return to collecting option color from base theme
class ColorApp {
  ColorApp({
    required this.useScheme,
    required this.useThemeData,
  });

  ColorScheme useScheme;
  ThemeData useThemeData;
}


/// default theme data
ThemeData appTheme(BuildContext context) {
  return ThemeData(
    appBarTheme: AppBarTheme(
      titleTextStyle: appFont(context).titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: MaterialStatePropertyAll(
        appFont(context).labelSmall?.copyWith(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
      ),
    ),
    fontFamily: "google",
    colorScheme: ColorScheme.fromSeed(

    /// core goal of this project in here
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ///
    ),
    useMaterial3: true,
  );
}
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
