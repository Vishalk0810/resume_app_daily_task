import 'package:flutter/material.dart';
import 'login_page/entry_page.dart';
import 'login_page/login_screen.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/':(context)=>const EntryPage(),
    '/login':(context)=>const LoginScreen(),
  };
}