import 'package:shared_preferences/shared_preferences.dart';

class SharedSettings {
  static setUsername(String username) async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setString("username", username);
  }

  static Future<String> getUsername() async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString("username");
  }
}
