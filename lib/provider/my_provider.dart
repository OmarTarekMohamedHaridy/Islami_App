import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode appTheme = ThemeMode.light ;
String langCode = "en" ;
  changeTheme (ThemeMode themMode){
    appTheme = themMode ;

  notifyListeners() ;
  }

  changeLanguage(String code){
    langCode = code;
    notifyListeners();
  }
}