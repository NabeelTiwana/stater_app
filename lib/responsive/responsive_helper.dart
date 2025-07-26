import 'package:flutter/material.dart';

class ResponsiveHelper {
  static const double mobileBreakpoint = 600;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < mobileBreakpoint;
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  // Get responsive value based on screen size
  static T getValue<T>(
      BuildContext context, {
        required T mobile,
        T? tablet,
        T? desktop,
      }) {
    return mobile; // Always return mobile value for iOS/Android only
  }

  // Get columns count for grid
  static int getColumnsCount(BuildContext context) {
    return isMobile(context) ? 1 : 2;
  }

  // Get padding based on screen size
  static EdgeInsets getPadding(BuildContext context) {
    return const EdgeInsets.all(16.0);
  }

  // Get responsive font size
  static double getFontSize(
      BuildContext context, {
        required double mobile,
        double? tablet,
        double? desktop,
      }) {
    return mobile;
  }
}