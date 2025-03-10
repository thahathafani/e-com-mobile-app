import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover, // Fixed missing `=`
    this.padding = 8.0, // Replaced `TSizes.sm` with default value
    this.isNetworkImage = false,
  });

  final BoxFit fit; // Removed duplicate declaration inside constructor
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context) ? Colors.black : Colors.white),
        borderRadius: BorderRadius.circular(108),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image) as ImageProvider
              : AssetImage(image),
          color: overlayColor,
        ),
      ),
    );
  }
}