import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static const String _firstTimeKey = 'isFirstTime';
  static const String _loggedInKey = 'isLoggedIn';

  static Future<bool> isFirstTime() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_firstTimeKey) ?? true;
    } catch (e) {
      return true;
    }
  }

  static Future<bool> isLoggedIn() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_loggedInKey) ?? false;
    } catch (e) {
      return false;
    }
  }

  static Future<void> setFirstTimeDone() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_firstTimeKey, false);
    } catch (e) {
      throw Exception('Failed to save first time preference');
    }
  }

  static Future<void> setLoginDone() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_loggedInKey, true);
    } catch (e) {
      throw Exception('Failed to save login preference');
    }
  }

  static Future<void> logout() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_loggedInKey);
    } catch (e) {
      throw Exception('Failed to logout');
    }
  }
}