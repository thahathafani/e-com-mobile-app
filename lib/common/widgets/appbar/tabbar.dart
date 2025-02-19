import 'package:flutter/material.dart';
import 'package:mobapp/utils/constants/colors.dart'; // Assuming TColors is defined here
import 'package:mobapp/utils/device/device_utility.dart';
import 'package:mobapp/utils/helpers/helper_functions.dart'; // Assuming THelperFunctions is defined here

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs, you have to wrap them in a Material widget.
  /// To do that, we need [PreferredSizeWidget] and that's why we created a custom class.
  const TTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? TColors.black : TColors.white, // Use appropriate colors from TColors
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary, // Use primary color for the indicator
        labelColor: dark ? TColors.white : TColors.primary, // Label color for selected tab
        unselectedLabelColor: TColors.darkGrey, // Label color for unselected tabs
      ),
    );
  }

  @override
  // Define the preferred size of the tab bar
  Size get preferredSize =>  Size.fromHeight(TDeviceUtils.getAppBarHeight()); // Standard height for a tab bar
}