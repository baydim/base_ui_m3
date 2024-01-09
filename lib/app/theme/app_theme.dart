import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextTheme appFont(BuildContext context) {
  var data = Theme.of(context).textTheme;
  return data;
}

ColorApp appColor(BuildContext context) {
  var scheme = Theme.of(context).colorScheme;
  var theme = Theme.of(context);
  return ColorApp(
    useScheme: scheme,
    useThemeData: theme,
  );
}

class ColorApp {
  ColorApp({
    required this.useScheme,
    required this.useThemeData,
  });

  ColorScheme useScheme;
  ThemeData useThemeData;
}

ThemeData appTheme(BuildContext context, {bool? useDark}) {
  return ThemeData(
    cupertinoOverrideTheme: CupertinoThemeData(
      brightness:
          (useDark ?? false) == true ? Brightness.dark : Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: appFont(context).titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: appColor(context).useScheme.background,
      iconTheme: const MaterialStatePropertyAll(
        IconThemeData(
          size: 20,
        ),
      ),
      labelTextStyle: MaterialStatePropertyAll(
        appFont(context).labelSmall?.copyWith(
              fontFamily: "google",
              fontSize: 10,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
      ),
    ),
    fontFamily: "google",
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness:
          (useDark ?? false) == true ? Brightness.dark : Brightness.light,
    ),
    brightness: (useDark ?? false) == true ? Brightness.dark : Brightness.light,
    useMaterial3: true,
  );
}
