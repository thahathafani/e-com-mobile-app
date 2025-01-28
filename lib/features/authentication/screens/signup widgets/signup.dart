import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobapp/features/authentication/screens/signup%20widgets/signup_form.dart';
import 'package:mobapp/utils/constants/text_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../common/widgets/login_form/form_divider.dart';
import '../../../../common/widgets/login_form/social_buttons.dart';
import '../login/login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon (CupertinoIcons.clear))
    ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


