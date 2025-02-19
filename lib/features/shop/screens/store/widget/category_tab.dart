import 'package:flutter/material.dart';
import '../../../../../common/widgets/brand/brand_showcase.dart';
import '../../../../../common/widgets/layout/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/seaction_heading.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget { // Fixed incorrect class declaration

  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands Showcase
              const TBrandShowcase(images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1
              ]),

              const TBrandShowcase(images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1
              ]),

              const SizedBox(height: TSizes.spaceBtwItems),

              /// Products Section
              TSectionHeading(
                title: 'You might like', // Fixed missing quotation mark
                onPressed: () {},
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCardVertical(), // Fixed missing parameter 'context'
              ),

              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}