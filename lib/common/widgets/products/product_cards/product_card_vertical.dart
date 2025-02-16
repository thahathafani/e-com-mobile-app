import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobapp/utils/constants/colors.dart';
import 'package:mobapp/utils/constants/sizes.dart';
import 'package:mobapp/utils/helpers/helper_functions.dart';
import 'package:mobapp/common/widgets/icons/circular_icon.dart'; // Assuming this is the correct import for TCircularIcon
import 'package:mobapp/common/widgets/texts/product_title_text.dart';

import '../../../styles/shadows.dart';
import '../../container/rounded_container.dart';
import '../../image/rouneded_image.dart'; // Assuming this is the correct import for TProductTitleText

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(TSizes.sm),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [

          /// Thumbnail, Wishlist Button, Discount Tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [

                /// -- Thumbnail Image
                const TRoundedImage(
                  imageUrl: 'assets/images/products/nike-shoes.png', // Replace with your image path
                  applyImageRadius: true,
                ),

                /// -- Sale Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
                    ),
                  ),
                ),

                /// -- Favourite Icon Button
                const Positioned(
                  top: 6,
                  right: 9,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwItems / 2),

          // To don't have any change in alignment of the box due to multi lines in the codes

          const Spacer(),

          /// -- Details
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TProductTitleText(title: 'Green Nike Air Shoes', smallSize: true),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text(
                      'Nike',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(width: TSizes.xs),
                    const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs),
                  ],
                ),
              ],
            ),
          ),

          /// -- Price and Add Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              /// -- Price
              Text(
                '\$35.5',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              /// -- Add Button
              Container(
                decoration: const BoxDecoration(
                  color: TColors.dark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(TSizes.cardRadiusMd),
                    bottomRight: Radius.circular(TSizes.productImageRadius),
                  ),
                ),
                child: const SizedBox(
                  width: TSizes.iconLg * 1.2,
                  height: TSizes.iconLg * 1.2,
                  child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}