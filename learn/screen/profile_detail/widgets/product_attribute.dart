import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../widgets/t_product_title_text.dart';
import '../../../widgets/t_section_heading.dart';
import '../../../widgets/t_product_price_text.dart';
import '../../../widgets/t_choice_chip.dart';
import '../../../utils/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title, Price, and Stock Status
        Row(
          children: [
            const TSectionHeading(title: "Variation", showActionButton: false),
            const SizedBox(width: TSizes.spaceBtwItems),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Price Row
                Row(
                  children: [
                    const TProductTitleText(title: 'Price', smallSize: true),

                    /// Actual Price
                    Text(
                      '\$25',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .apply(decoration: TextDecoration.lineThrough),
                    ),

                    const SizedBox(width: TSizes.spaceBtwItems),

                    /// Sale Price
                    const TProductPriceText(price: '20'),
                  ],
                ),

                const SizedBox(height: TSizes.spaceBtwItems / 2),

                /// Stock Status
                Row(
                  children: [
                    const TProductTitleText(title: 'Stock', smallSize: true),
                    Text(
                      'In Stock',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Variation Description
        const TProductTitleText(
          title: 'This is the Description of the Product, and it can go up to a max of 4 lines.',
          smallSize: true,
          maxLines: 4,
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Attributes - Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Blue', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Attributes - Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
