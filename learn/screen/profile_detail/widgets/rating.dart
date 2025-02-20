import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart'; // Fixed import path

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Rating
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '15.0', // Fixed text formatting
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const TextSpan(text: ' (199)'), // Fixed text syntax
                ],
              ),
            ),
          ],
        ),

        /// Share Button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: TSizes.iconSize), // Fixed missing constant
        ),
      ],
    );
  }
}
