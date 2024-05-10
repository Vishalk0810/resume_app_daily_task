import 'package:flutter/material.dart';
import 'Gmail/component/gmail.dart';
import 'login_page/component/entry_page.dart';
import 'login_page/component/login_screen.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
       '/':(context)=>const Gmail(),
    // '/':(context)=>const EntryPage(),
    // '/login':(context)=>const LoginScreen(),
  };
}