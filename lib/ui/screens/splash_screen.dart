import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shop_app/gen/assets.gen.dart';
import 'package:shop_app/ui/constants/strings.dart';
import 'package:shop_app/ui/screens/main_screen/main_screen.dart';
import 'package:shop_app/ui/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  static const screenId = '/splash_screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToMainScreen();
  }
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: splashScreenGradientColor,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AvatarGlow(
                        endRadius: 100.0,
                        child: Assets.images.appleIcon.image(scale: 3),
                      ),
                      Text(
                        SplashScreenStrings.appleShop,
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            SplashScreenStrings.introText1,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            SplashScreenStrings.introText2,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            SplashScreenStrings.introText3,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.05),
                      const SpinKitSpinningLines(
                        lineWidth: 3,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> navigateToMainScreen() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushNamed(context, MainScreen.screenId),
    );
  }
}
