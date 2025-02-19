import 'package:flutter/material.dart';
import 'brand_title_text.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = Colors.blue, // Replaced TColors.primary with a default color
    this.textAlign = TextAlign.center, // Fixed missing `=`
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: 8.0), // Replaced `TSizes.xs`
        Icon(Icons.verified, color: iconColor, size: 16.0), // Fixed `Iconsax.verify5`
      ],
    );
  }
}