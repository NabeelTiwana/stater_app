import 'package:flutter/material.dart';
import '../../responsive/responsive_helper.dart';

class MyElevatedButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double? bottomPosition;
  final double? minHorizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final double? fixedWidth;

  const MyElevatedButton({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
    this.backgroundColor = Colors.indigo,
    this.textColor = Colors.white,
    this.bottomPosition,
    this.minHorizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    this.fixedWidth,
  }) : assert(text != null || child != null,
  'Either text or child must be provided');

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottomPosition ?? ResponsiveHelper.getValueForPhoneSize(
        context,
        smallPhone: 20.0,
        largePhone: 30.0,
        mediumPhone: 25.0,
      ),
      left: 0,
      right: 0,
      child: Center(
        child: SizedBox(
          width: fixedWidth ?? ResponsiveHelper.getValueForPhoneSize(
            context,
            smallPhone: 300.0,
            largePhone: 350.0,
            mediumPhone: 320.0,
          ),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50), // Consistent height
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  borderRadius ?? ResponsiveHelper.getValueForPhoneSize(
                    context,
                    smallPhone: 12.0,
                    largePhone: 15.0,
                    mediumPhone: 14.0,
                  ),
                ),
              ),
              backgroundColor: backgroundColor,
              padding: EdgeInsets.symmetric(
                vertical: verticalPadding ?? ResponsiveHelper.getValueForPhoneSize(
                  context,
                  smallPhone: 12.0,
                  largePhone: 15.0,
                  mediumPhone: 14.0,
                ),
                horizontal: minHorizontalPadding ?? ResponsiveHelper.getValueForPhoneSize(
                  context,
                  smallPhone: 24.0,  // Reduced from 80.0
                  largePhone: 32.0,  // Reduced from 150.0
                  mediumPhone: 28.0, // Reduced from 120.0
                ),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: child ?? Text(
                text!,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}