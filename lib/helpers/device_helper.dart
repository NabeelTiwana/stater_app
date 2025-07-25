import 'package:flutter/cupertino.dart';

class DeviceHelper{
  static bool isDarkMode(BuildContext context){
    return MediaQuery.of(context).platformBrightness==Brightness.dark;
  }
}