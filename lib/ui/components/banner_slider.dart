import 'package:flutter/material.dart';
import 'package:shop_app/ui/theme/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatefulWidget {
  BannerSlider({Key? key}) : super(key: key);

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    PageController controller = PageController(viewportFraction: 0.8);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: size.height / 4,
          width: size.width,
          child: PageView.builder(
            itemCount: 5,
            controller: controller,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 10,
          child: SmoothPageIndicator(
            controller: controller,
            count: 5,
            effect: const ExpandingDotsEffect(
              expansionFactor: 4,
              dotHeight: 10,
              dotWidth: 10,
              dotColor: whiteColor,
              activeDotColor: blueColor,
            ),
          ),
        ),
      ],
    );
  }
}
