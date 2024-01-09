import 'package:base_ui_m3/app/modules/wrapper_menu/controllers/wrapper_menu_controller.dart';
import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
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
    return Obx(
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
            theme:
                appTheme(context, useDark: wrapperMenuController.isDark.value),
            darkTheme:
                appTheme(context, useDark: wrapperMenuController.isDark.value),
          ),
        );
      },
    );

    //     Obx(() {
    //   return FlutterWebFrame(
    //     builder: (_) {
    //       return GetMaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         localizationsDelegates: const [
    //           GlobalMaterialLocalizations.delegate,
    //           GlobalWidgetsLocalizations.delegate,
    //           GlobalCupertinoLocalizations.delegate,
    //         ],
    //         supportedLocales: const [
    //           Locale('id', 'ID'),
    //         ],
    //         title: "BASE_UI_M3",
    //         initialRoute: AppPages.INITIAL,
    //         getPages: AppPages.routes,
    //         theme:
    //             appTheme(context, useDark: wrapperMenuController.isDark.value),
    //         darkTheme:
    //             appTheme(context, useDark: wrapperMenuController.isDark.value),
    //       );
    //     },
    //     maximumSize: wrapperMenuController.size(context),
    //     enabled: wrapperMenuController.isWeb.value,
    //     backgroundColor: appColor(context).useScheme.background,
    //     clipBehavior: Clip.antiAlias,
    //   );
    // });

    ///
    ///
    ///
    ///
  }
}
