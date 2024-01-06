import 'package:shared_preferences/shared_preferences.dart';

class ServiceShared {
// SAVE DARK MODE OR LIGHT
  static Future<void> setDark({required bool isDark}) async {
    var shared = await SharedPreferences.getInstance();
    await shared.setBool("dark", isDark);
    return;
  }

  static Future<bool> getDark() async {
    var shared = await SharedPreferences.getInstance();
    var response = shared.getBool("dark");
    return response ?? false;
  }
// END SAVE DARK MODE OR LIGHT
}
