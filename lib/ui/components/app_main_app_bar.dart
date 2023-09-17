import 'package:flutter/material.dart';
import 'package:shop_app/gen/assets.gen.dart';
import 'package:shop_app/gen/fonts.gen.dart';
import 'package:shop_app/ui/theme/colors.dart';

class AppbarWithSearchBox extends StatelessWidget {
  const AppbarWithSearchBox({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.10,
          right: size.width * 0.10,
          bottom: size.height * 0.03,
          top: size.height * 0.03,
        ),
        child: Container(
          height: size.height * 0.06,
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            child: Row(
              children: [
                Assets.images.iconAppleBlue.image(),
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.end,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 12,
                      fontFamily: FontFamily.sb,
                      color: greyColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Assets.images.iconSearch.image(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
