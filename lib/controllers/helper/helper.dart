import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  Future<void> setValue(String key, dynamic value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value is String) {
      prefs.setString(key, value);
    } else if (value is int) {
      prefs.setInt(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    }
  }

  Future<dynamic> getValue(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic value = prefs.get(key);
    if (value is String) {
      return value;
    } else if (value is int) {
      return value;
    } else if (value is double) {
      return value;
    } else if (value is bool) {
      return value;
    }
    return null;
  }
}
