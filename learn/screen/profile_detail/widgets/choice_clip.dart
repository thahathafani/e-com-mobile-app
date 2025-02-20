import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/helper_functions.dart';
import '../../widgets/t_circular_container.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    /// Check if the `text` represents a color (returns `true` if it's a valid color)
    final bool isColor = THelperFunctions.getColor(text) != null;

    return ChoiceChip(
      /// If `text` is a color, hide label; otherwise, show text
      label: isColor ? const SizedBox() : Text(text),

      selected: selected,
      onSelected: onSelected,

      /// Apply styles dynamically based on selection state
      labelStyle: TextStyle(color: selected ? TColors.white : null),

      /// If `text` is a color, show a circular color preview
      avatar: isColor
          ? TCircularContainer(
              width: 20,
              height: 20,
              backgroundColor: THelperFunctions.getColor(text)!,
            )
          : null,

      /// Padding adjustments for color-based chips
      labelPadding: isColor ? const EdgeInsets.all(8) : null,
      padding: isColor ? EdgeInsets.zero : null,

      /// Shape styling for color-based chips
      shape: isColor ? const CircleBorder() : null,

      /// Background color for color-based chips
      backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
    );
  }
}
