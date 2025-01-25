import 'package:flutter/material.dart';
import 'package:mobapp/features/shop/screens/home/widgets/home_appbar.dart';

import '../../../../common/widgets/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/search_container.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Tutorial [Section #3, Video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar Tutorial [Section #3, Video #3]
                  THomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Search Bar Tutorial [Section #3, Video #4]
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories Tutorial [Section #3, Video #4]
                  // Add the code for categories here (if applicable)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
