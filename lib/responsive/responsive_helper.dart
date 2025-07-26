import 'package:flutter/material.dart';

class ResponsiveHelper {
  // Breakpoint between small and large phones
  static const double smallPhoneBreakpoint = 375;
  static const double largePhoneBreakpoint = 600;

  static bool isSmallPhone(BuildContext context) {
    return MediaQuery.of(context).size.width < smallPhoneBreakpoint;
  }

  static bool isLargePhone(BuildContext context) {
    return MediaQuery.of(context).size.width >= largePhoneBreakpoint;
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  // Get responsive value for different phone sizes
  static T getValueForPhoneSize<T>(
      BuildContext context, {
        required T smallPhone,
        required T largePhone,
        T? mediumPhone,
      }) {
    final width = MediaQuery.of(context).size.width;

    if (width >= largePhoneBreakpoint) {
      return largePhone;
    } else if (mediumPhone != null && width >= smallPhoneBreakpoint) {
      return mediumPhone;
    }
    return smallPhone;
  }

  // Simplified columns count for grid
  static int getColumnsCount(BuildContext context) {
    return isLargePhone(context) ? 2 : 1;
  }

  // Get responsive padding
  static EdgeInsets getPadding(BuildContext context) {
    return EdgeInsets.all(
      getValueForPhoneSize(
        context,
        smallPhone: 12.0,
        largePhone: 16.0,
        mediumPhone: 14.0,
      ),
    );
  }

  // Get responsive font size
  static double getFontSizeForPhone(
      BuildContext context, {
        required double smallPhone,
        required double largePhone,
        double? mediumPhone,
      }) {
    return getValueForPhoneSize(
      context,
      smallPhone: smallPhone,
      largePhone: largePhone,
      mediumPhone: mediumPhone,
    );
  }
}