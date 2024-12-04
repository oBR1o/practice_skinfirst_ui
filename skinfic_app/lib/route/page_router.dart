import 'package:flutter/material.dart';
import 'package:skinfic_app/screen/log_in_page.dart';
import 'package:skinfic_app/screen/register_page.dart';
import 'package:skinfic_app/screen/sign_up_page.dart';
import 'package:skinfic_app/screen/splash_screen.dart';

class PageRouter {
  static const String homePage = '/home_page';
  static const String splashScreen = '/splash_screen';
  static const String registerPage = '/register_page';
  static const String logInPage = '/login_page';
  static const String signUpPage = '/signup_page';


  static final Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    registerPage: (context) => const RegisterPage(),
    logInPage: (context) => const LogInPage(),
    signUpPage: (context) => const SignUpPage(),
  };
}