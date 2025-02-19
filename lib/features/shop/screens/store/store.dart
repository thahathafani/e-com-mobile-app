import 'package:flutter/material.dart';
import 'package:mobapp/features/shop/screens/store/widget/category_tab.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brand/brand_card.dart';
import '../../../../common/widgets/custom_shapes/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/seaction_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

        /// ----------------AppBar------------------///

        appBar: AppBar( // Fixed incorrect TAppBar usage
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),

        /// ----------------AppBar Ends------------------///


        ///-----------------Body Section----------------///

        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) { // Fixed missing parameters
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440, // Space between AppBar and TabBar
                automaticallyImplyLeading: false,
                backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.dark : TColors.white, // Fixed `block` typo

                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace), // Fixed incorrect period
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [

                      const SizedBox(height: TSizes.spaceBtwItems), /// Fixed typo `spaceStwItems`

                      /// Search bar

                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false, // Fixed incorrect capitalization `showbackground`
                        padding: EdgeInsets.zero,
                      ),

                      const SizedBox(height: TSizes.spaceBtwSections),

                      /// Featured Brands
                      TSectionHeading(title: 'Featured Brands', onPressed: () {}), // Fixed missing curly braces
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      /// TGridLayout here

                      /// Brands GRID
                      TGridLayout(
                        itemCount: 4, // Fixed period typo
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) { // Fixed missing parameter 'context'
                          return const BrandCard(showBorder: false);
                        },
                      ), // TGridLayout
                    ],
                  ),
                ), // Padding

                /// Tabs Section
                bottom: const TTabBar( // Fixed incorrect TTabBar reference
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          /// Body Section
          body: const TabBarView(
            children: [
              TCategoryTab(), // Fixed missing commas
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}