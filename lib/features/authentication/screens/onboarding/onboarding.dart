import 'package:flutter/material.dart';
import'package:mobapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mobapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mobapp/utils/constants/colors.dart';
import 'package:mobapp/utils/constants/image_strings.dart';
import 'package:mobapp/utils/constants/sizes.dart';
import 'package:mobapp/utils/constants/text_strings.dart';
import 'package:mobapp/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/device/device_utility.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,),
            ],

          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation Smooth Page Indicator
          const OnBoardingDotNavigation()

        ],
      ),
    );
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light: TColors.dark, dotWidth: 8, dotHeight: 8),
      ),
    );
  }
}


