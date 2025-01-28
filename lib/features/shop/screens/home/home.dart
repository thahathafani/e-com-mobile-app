import 'package:flutter/material.dart';
import 'package:mobapp/features/shop/screens/home/widgets/home_appbar.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/container/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                TAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
