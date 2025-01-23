import 'package:flutter/material.dart';
import 'package:mobapp/utils/constants/sizes.dart';
import 'package:mobapp/utils/constants/text_strings.dart';
import 'package:mobapp/utils/helpers/helper_functions.dart';

import '../../styles/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() / 6.6,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
