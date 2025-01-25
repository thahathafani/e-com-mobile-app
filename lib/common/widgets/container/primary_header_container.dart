import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widgets.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 480,
          child: Stack(
            children: [
              Positioned(
                top: 158,
                right: 258,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.8),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.8),
                ),
              ),
            ],
          ), // Stack
        ), // SizedBox
      ), // Container
    );
  }
}