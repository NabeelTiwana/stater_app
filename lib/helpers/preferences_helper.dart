import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper{
  static Future<bool>isFirstTime()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getBool('isFirstTime')??true;
  }
  static Future<bool>isLoggedIn()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn')??false;
  }
  static Future<void>setFirstTimeDone()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);
  }
  static Future<void>setLoginDone()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
  }
  static Future<void>Logout()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
  }
}