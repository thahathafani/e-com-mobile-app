import 'package:flutter/material.dart';

import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/layouts/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey, // Fixed misplaced period
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const TBrandCard(showBorder: false),

          /// Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => _brandTopProductImageWidget(image, context)) // Fixed function call
                .toList(),
          ),
        ],
      ),
    );
  }

  /// Widget to display the top product image
  Widget _brandTopProductImageWidget(String image, BuildContext context) { // Fixed function name
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context) 
            ? TColors.darkerGrey 
            : TColors.light, // Fixed capitalization issue

        child: Image( // Fixed incorrect spelling `Imige` → `Image`
          fit: BoxFit.contain, 
          image: AssetImage(image),
        ),
      ),
    );
  }
}
