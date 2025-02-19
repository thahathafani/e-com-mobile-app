import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mobapp/common/widgets/appbar/appbar.dart';
import 'package:mobapp/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:mobapp/features/shop/screens/home/home.dart';

import '../../../../common/widgets/icons/circular_icon.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../utils/constants/sizes.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ], // Fixed misplaced `1,`
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 4, // Added itemCount value (assumed 4)
                itemBuilder: (context, index) => const TProductCardVertical(), // Fixed missing `context` in itemBuilder
              ),
            ],
          ),
        ),
      ),
    );
  }
}