import 'package:base_ui_m3/app/modules/wrapper_menu/controllers/wrapper_menu_controller.dart';
import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';

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
