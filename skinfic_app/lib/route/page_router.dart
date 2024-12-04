import 'package:flutter/material.dart';
import 'package:skinfic_app/screen/splash_screen.dart';

class PageRouter {
  static const String homePage = '/home_page';
  static const String splashScreen = '/splash_screen';


  static final Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
  };
}