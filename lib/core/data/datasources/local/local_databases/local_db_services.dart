import 'package:shared_preferences/shared_preferences.dart';

class LocalDBServices {
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> saveString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  static String getString(String key) {
    return _sharedPreferences.getString(key) ?? '';
  }

  static Future<void> saveInt(String key, int value) async {
    await _sharedPreferences.setInt(key, value);
  }

  static int getInt(String key) {
    return _sharedPreferences.getInt(key) ?? 0;
  }

  static Future<void> saveBool(String key, bool value) async {
    await _sharedPreferences.setBool(key, value);
  }
}
