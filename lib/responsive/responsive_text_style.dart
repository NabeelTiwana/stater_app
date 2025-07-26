import 'package:flutter/cupertino.dart';

extension ResponsiveTextStyles on BuildContext {
  TextStyle get responsiveDisplayLarge => AppTextStyle.displayLarge.copyWith(
    fontSize: 40,
  );

  TextStyle get responsiveHeadlineLarge => AppTextStyle.headlineLarge.copyWith(
    fontSize: 28,
  );

  TextStyle get responsiveHeadlineMedium => AppTextStyle.headlineMedium.copyWith(
    fontSize: 24,
  );

  TextStyle get responsiveTitleLarge => AppTextStyle.titleLarge.copyWith(
    fontSize: 18,
  );

  TextStyle get responsiveBodySmall => AppTextStyle.bodySmall.copyWith(
    fontSize: 10,
  );

  TextStyle get responsiveBodyLarge => AppTextStyle.bodyLarge.copyWith(
    fontSize: 14,
  );

  TextStyle get responsiveBodyMedium => AppTextStyle.bodyMedium.copyWith(
    fontSize: 12,
  );

  // responsive spacing
  double get smallSpacing => 8.0;

  double get mediumSpacing => 24.0;

  double get largeSpacing => 24.0;

  //Responsive Padding
  EdgeInsets get horizontalPadding => const EdgeInsets.symmetric(horizontal: 16.0);

  EdgeInsets get verticalPadding => const EdgeInsets.symmetric(vertical: 12.0);

  EdgeInsets get allPadding => const EdgeInsets.all(16.0);
}