import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            titleTextStyle: appFont(context).titleMedium,
          ),
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: MaterialStatePropertyAll(
              appFont(context).labelSmall,
            ),
          ),
          fontFamily: "google",
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
