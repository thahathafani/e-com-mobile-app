import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../../common/widgets/container/circular_container.dart';
import '../../../../../common/widgets/image/rouneded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
          ),
          items: banners
              .map((url) => TRoundedImage(imageUrl: url))
              .toList(),
        ), // CarouselSlider
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
                () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: TCircularContainer(
                      width: 20,
                      height: 4,
                      backgroundColor:
                      controller.carouselCurrentIndex.value == i
                          ? TColors.primary
                          : TColors.grey,
                    ), // TCircularContainer
                  ), // Container
              ],
            ),
          ),
        ),
      ],
    );
  }
}