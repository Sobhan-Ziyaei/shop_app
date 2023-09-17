import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_app/gen/assets.gen.dart';
import 'package:shop_app/ui/constants/strings.dart';
import 'package:shop_app/ui/screens/main_screen/cart_screen.dart';
import 'package:shop_app/ui/screens/main_screen/home_screen.dart';
import 'package:shop_app/ui/screens/main_screen/product_list_screen.dart';
import 'package:shop_app/ui/screens/main_screen/profile_screen.dart';
import 'package:shop_app/ui/theme/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const screenId = '/main_screen' ;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedLabelStyle: theme.textTheme.labelSmall,
            unselectedLabelStyle:
                theme.textTheme.labelSmall?.copyWith(color: blackColor),
            elevation: 0,
            onTap: (value) {
              setState(() {
                _selectedScreen = value;
              });
            },
            currentIndex: _selectedScreen,
            items: [
              BottomNavigationBarItem(
                label: MainScreenStrings.profile,
                icon: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: blueColor,
                        blurRadius: 20,
                        spreadRadius: -7,
                        offset: Offset(0.0, 13),
                      )
                    ],
                  ),
                  child: Assets.images.iconProfile.image(),
                ),
                activeIcon: Assets.images.iconProfileActive.image(),
              ),
              BottomNavigationBarItem(
                label: MainScreenStrings.cart,
                icon: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: blueColor,
                        blurRadius: 20,
                        spreadRadius: -7,
                        offset: Offset(0.0, 13),
                      ),
                    ],
                  ),
                  child: Assets.images.iconBasket.image(),
                ),
                activeIcon: Assets.images.iconBasketActive.image(),
              ),
              BottomNavigationBarItem(
                label: MainScreenStrings.category,
                icon: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: blueColor,
                        blurRadius: 20,
                        spreadRadius: -7,
                        offset: Offset(0.0, 13),
                      ),
                    ],
                  ),
                  child: Assets.images.iconCategory.image(),
                ),
                activeIcon: Assets.images.iconCategoryActive.image(),
              ),
              BottomNavigationBarItem(
                label: MainScreenStrings.home,
                icon: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: blueColor,
                        blurRadius: 20,
                        spreadRadius: -7,
                        offset: Offset(0.0, 13),
                      ),
                    ],
                  ),
                  child: Assets.images.iconHome.image(),
                ),
                activeIcon: Assets.images.iconHomeActive.image(),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: IndexedStack(
        index: _selectedScreen,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      const ProfileScreen(),
      const CartScreen(),
      const ProductListScreen(),
      const HomeScreen(),
    ];
  }
}
