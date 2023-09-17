import 'package:flutter/material.dart';
import 'package:shop_app/router/app_router.dart';
import 'package:shop_app/ui/screens/splash_screen.dart';
import 'package:shop_app/ui/theme/theme.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: SplashScreen.screenId,
    );
  }
}