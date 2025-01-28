import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobapp/features/authentication/screens/login/widgets/widgets_login/login_form.dart';
import 'package:mobapp/features/authentication/screens/login/widgets/widgets_login/login_header.dart';
import 'package:mobapp/utils/constants/sizes.dart';
import 'package:mobapp/utils/constants/text_strings.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_form/form_divider.dart';
import '../../../../common/widgets/login_form/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Logo, Title & Sub-Title
             const TLoginHeader(),
              //const SizedBox(height: TSizes.spaceBtwItems),

              /// Form
              const TLoginForm(),

              /// Divider
              //const SizedBox(height: TSizes.spaceBtwSections),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer Row
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}







