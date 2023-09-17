import 'package:flutter/material.dart';
import 'package:shop_app/gen/fonts.gen.dart';
import 'package:shop_app/ui/components/app_main_app_bar.dart';
import 'package:shop_app/ui/components/banner_slider.dart';
import 'package:shop_app/ui/constants/strings.dart';
import 'package:shop_app/ui/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const AppbarWithSearchBox(
              title: HomeScreenStrings.searchProduct,
            ),
            SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: size.height * 0.05),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      HomeScreenStrings.category,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
