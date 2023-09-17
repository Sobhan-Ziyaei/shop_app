import 'package:flutter/material.dart';
import 'package:shop_app/ui/screens/main_screen/main_screen.dart';
import 'package:shop_app/ui/screens/splash_screen.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.screenId:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case MainScreen.screenId:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
      default:
        return null;
    }
  }
}
