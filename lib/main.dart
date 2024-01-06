import 'package:base_ui_m3/app/modules/wrapper_menu/controllers/wrapper_menu_controller.dart';
import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            title: "Application",
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
  }
}
