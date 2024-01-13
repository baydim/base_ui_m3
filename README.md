<img src="https://raw.githubusercontent.com/baydim/base_ui_m3/main/assets/images/thumb.webp" alt="THUMBNAIL" width="100%">

# BASE MATERIAL 3 FLUTTER
This is a Flutter application in UI development that refers to the base ThemeData of Flutter Material itself, from the use of textStyle to the selection of colors taken from the default ThemeData.

### core code
```dart
/// this file on 
/// lib/app/theme/app_theme.dart
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


### implement code

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  await SharedPreferences.getInstance();
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    WrapperMenuController wrapperMenuController =
        Get.put(WrapperMenuController());

    return !kIsWeb
        ? Obx(
            () {
              return GestureDetector(
                onTap: () {
                  Get.focusScope?.unfocus();
                },
                child: GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('id', 'ID'),
                  ],
                  title: "BASE_UI_M3",
                  initialRoute: AppPages.INITIAL,
                  getPages: AppPages.routes,
                  theme: appTheme(context,
                      useDark: wrapperMenuController.isDark.value),
                  darkTheme: appTheme(context,
                      useDark: wrapperMenuController.isDark.value),
                ),
              );
            },
          )
        : Obx(() {
            return Theme(
              data: appTheme(
                context,
                useDark: wrapperMenuController.isDark.value,
              ),
              child: FlutterWebFrame(
                builder: (_) {
                  return GetMaterialApp(
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: const [
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: const [
                      Locale('id', 'ID'),
                    ],
                    title: "BASE_UI_M3",
                    initialRoute: AppPages.INITIAL,
                    getPages: AppPages.routes,
                    theme: appTheme(context,
                        useDark: wrapperMenuController.isDark.value),
                    darkTheme: appTheme(context,
                        useDark: wrapperMenuController.isDark.value),
                  );
                },
                maximumSize: wrapperMenuController.size.value,
                enabled: kIsWeb,
                backgroundColor: wrapperMenuController.isDark.value
                    ? Colors.black
                    : Colors.white,
                clipBehavior: Clip.antiAlias,
              ),
            );
          });

    ///
    ///
    ///
    ///
  }
}

```

## LIGHT MODE
![LIGHT MODE](https://raw.githubusercontent.com/baydim/base_ui_m3/main/assets/images/light.webp)

## DARK MODE
![DARK MODE](https://raw.githubusercontent.com/baydim/base_ui_m3/main/assets/images/dark.webp)




<!-- https://cdn-icons-png.flaticon.com/512/888/888839.png -->

## DEMO MODE
<table style="text-align: center;">
    <tr>
        <td style="text-align: center;">
            <a href="https://drive.google.com/drive/folders/1_5-TCLEwO30gBgnmhu2WHHZOuzRUd-wn?usp=drive_link">
                <img src="https://cdn-icons-png.flaticon.com/512/888/888839.png" alt="APK BASE" width="50">
            </a>
        </td>
        <td width="50px">
        </td>
        <td style="text-align: center;">
            <a href="https://base-ui-m3-web.vercel.app/">
                <img src="https://cdn-icons-png.flaticon.com/512/10453/10453141.png" alt="WEB BASE" width="50">
            </a>
        </td>
    </tr>
</table>


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
