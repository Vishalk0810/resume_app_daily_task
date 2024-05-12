import 'package:flutter/material.dart';
import 'gmail_login_page/component/Login_screen.dart';
import 'gmail_login_page/component/login_password.dart';
import 'gmail_login_page/successful_page/component/successful_screen.dart';
class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
     '/':(context)=>const GoogleEmailScreen(),
     '/password':(context)=>const PasswordScreen(),
     '/success':(context)=>const SuccessScreen(),
    // '/':(context)=>const Gmail(),
    // '/':(context)=>const EntryPage(),
    // '/login':(context)=>const LoginScreen(),
  };
}