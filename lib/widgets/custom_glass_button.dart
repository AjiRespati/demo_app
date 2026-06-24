import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

class CustomGlassButton extends StatelessWidget {
  const CustomGlassButton({
    this.icon,
    required this.label,
    required this.onTap,
    super.key,
  });

  final Icon? icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GlassButton.custom(
      shape: const LiquidRoundedRectangle(borderRadius: 28),
      onTap: onTap,
      // width: double.infinity,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon ?? SizedBox.shrink(),
          // Icon(
          //   CupertinoIcons.arrow_down_circle_fill,
          //   color: CupertinoColors.label.resolveFrom(context),
          //   size: 18,
          // ),
          SizedBox(width: icon == null ? null : 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              // color: CupertinoColors.label.resolveFrom(context),
            ),
          ),
        ],
      ),
    );
  }
}
