import 'package:flutter/material.dart';
import 'package:mobapp/utils/constants/colors.dart'; // Assuming TColors is defined here
import 'package:mobapp/utils/constants/sizes.dart'; // Assuming TSizes is defined here
import 'package:mobapp/utils/helpers/helper_functions.dart';
import 'package:mobapp/common/widgets/texts/brand_title_text.dart';
import '../container/rounded_container.dart';
import '../image/circular_image.dart';
import '../texts/brand_title_text_verified_icon.dart'; // Assuming THelperFunctions is defined here

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: 'assets/icons/brands/nike.png', // Replace with your image path
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                   brandTextSize: TextSizes.small,
                  ),
                  Text(
                    '25 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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