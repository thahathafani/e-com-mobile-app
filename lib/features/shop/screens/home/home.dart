import 'package:flutter/material.dart';
import 'package:mobapp/common/widgets/custom_shapes/search_container.dart';
import 'package:mobapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mobapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mobapp/features/shop/screens/home/widgets/promo_slider.dart';

import '../../../../common/widgets/container/primary_header_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/seaction_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                  /// AppBar Home
                    THomeAppbar(),
                    SizedBox(height: TSizes.spaceBtwSections,),

                  /// Search Bar
                    TSearchContainer(text: "Search"),
                    SizedBox(height: TSizes.spaceBtwSections,),

                  /// Categories Tutorial [Section 3, Video #4]
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        /// Categories
                        THomeCategories(),
                      ],
                    ), // Column
                  ),
                ],
              ),
            ),
            /// Body Tutorial [Section #3, Video #5]
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    /// Home Banners
                      banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3,]
                  ),
                  SizedBox(height: TSizes.spaceBtwSections / 2),
                    /// Popular Products 
                    /// TGridLayout(itemCount: 2, itemBuilder: (_, index) => const TProductCardVertical())
                  //TProductCardVertical(),
                ],
              )
            ), // Padding
          ],
        ),
      ),
    );
  }
}
