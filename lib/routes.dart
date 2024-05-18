import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/registration_form_and_id_card/component/id_card.dart';
import 'package:resume_app_daily_task/registration_form_and_id_card/component/registration_form.dart';
import 'Circle_avatar/component/circle_avtar.dart';
import 'Generate_Dynamic_Text_Field/component/dynamic_text_field.dart';
import 'gmail_login_page/component/Login_screen.dart';
import 'gmail_login_page/component/login_password.dart';
import 'gmail_login_page/successful_page/component/successful_screen.dart';
class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
        '/':(context)=>const DynamicTextField(),
       // '/':(context)=>const RegistrationForm(),
       // '/id':(context)=>const IdCard(),
      // '/':(context)=>const Picker(),
     // '/':(context)=>const GoogleEmailScreen(),
     // '/password':(context)=>const PasswordScreen(),
     // '/success':(context)=>const SuccessScreen(),
    // '/':(context)=>const Gmail(),
    // '/':(context)=>const EntryPage(),
    // '/login':(context)=>const LoginScreen(),
  };
}