import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobapp/features/authentication/controllers/onboarding_controllers.dart';
import 'package:mobapp/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mobapp/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mobapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mobapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mobapp/utils/constants/image_strings.dart';
import 'package:mobapp/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          const OnBoardingDotNavigation(),
          
          /// Circular Button
          const OnBoardingNextButton(),

        ],
      ),
    );
  }
}


