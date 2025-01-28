import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mobapp/features/shop/screens/home/widgets/promo_slider.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/container/circular_container.dart';
import '../../../../common/widgets/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/search_container.dart';
import '../../../../common/widgets/texts/seaction_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

/// HomeScreen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Tutorial [Section 3, Video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TCircularContainer(),
                  /// AppBar Tutorial [Section 3, Video #3]
                  TAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Search Bar Tutorial [Section 3, Video #4]
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories Tutorial [Section 3, Video #41]
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body Tutorial [Section 3, Video #5]
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
