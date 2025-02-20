import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/sizes.dart';
import '../../../widgets/t_product_image_slider.dart';
import '../../../widgets/t_rating_and_share.dart';
import '../../../widgets/t_product_meta_data.dart';
import '../../../widgets/t_product_attributes.dart';
import '../../../widgets/t_section_heading.dart';
import '../../../widgets/t_read_more_text.dart';
import '../../../utils/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1. Product Image Slider
            TProductImageSlider(),

            /// 2. Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// Rating & Share Button
                  TRatingAndShare(),

                  /// Price, Title, Stock, & Brand
                  TProductMetaData(),

                  /// Attributes
                  TProductAttributes(),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Description
                  const TSectionHeading(title: "Description", showActionButton: false),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeveless vest. More details can be added here.',
                    trimLines: 2,
                    trimMode: TrimMode.line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews (199)', showActionButton: false),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
