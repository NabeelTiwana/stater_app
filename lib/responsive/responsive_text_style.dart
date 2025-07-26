import 'package:flutter/cupertino.dart';
import 'package:starter_app/responsive/responsive_helper.dart';
import '../utils/constant/app_text_style.dart';

extension ResponsiveTextStyles on BuildContext {
  // Display styles
  TextStyle get responsiveDisplayLarge => AppTextStyle.displayLarge.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 36,
      largePhone: 48,
      mediumPhone: 42,
    ),
  );

  TextStyle get responsiveDisplayMedium => AppTextStyle.displayMedium.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 32,
      largePhone: 40,
      mediumPhone: 36,
    ),
  );

  TextStyle get responsiveDisplaySmall => AppTextStyle.displaySmall.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 28,
      largePhone: 34,
      mediumPhone: 32,
    ),
  );

  // Headline styles
  TextStyle get responsiveHeadlineLarge => AppTextStyle.headlineLarge.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 26,
      largePhone: 32,
      mediumPhone: 28,
    ),
  );

  TextStyle get responsiveHeadlineMedium => AppTextStyle.headlineMedium.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 22,
      largePhone: 28,
      mediumPhone: 24,
    ),
  );

  TextStyle get responsiveHeadlineSmall => AppTextStyle.headlineSmall.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 20,
      largePhone: 24,
      mediumPhone: 22,
    ),
  );

  // Title styles
  TextStyle get responsiveTitleLarge => AppTextStyle.titleLarge.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 18,
      largePhone: 22,
      mediumPhone: 20,
    ),
  );

  // Body styles
  TextStyle get responsiveBodyLarge => AppTextStyle.bodyLarge.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 14,
      largePhone: 16,
      mediumPhone: 15,
    ),
  );

  TextStyle get responsiveBodyMedium => AppTextStyle.bodyMedium.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 12,
      largePhone: 14,
      mediumPhone: 13,
    ),
  );

  TextStyle get responsiveBodySmall => AppTextStyle.bodySmall.copyWith(
    fontSize: ResponsiveHelper.getFontSizeForPhone(
      this,
      smallPhone: 10,
      largePhone: 12,
      mediumPhone: 11,
    ),
  );

  // Spacing
  double get smallSpacing => ResponsiveHelper.getValueForPhoneSize(
    this,
    smallPhone: 8.0,
    largePhone: 12.0,
    mediumPhone: 10.0,
  );

  double get mediumSpacing => ResponsiveHelper.getValueForPhoneSize(
    this,
    smallPhone: 16.0,
    largePhone: 24.0,
    mediumPhone: 20.0,
  );

  double get largeSpacing => ResponsiveHelper.getValueForPhoneSize(
    this,
    smallPhone: 24.0,
    largePhone: 32.0,
    mediumPhone: 28.0,
  );

  // Padding
  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(
    horizontal: ResponsiveHelper.getValueForPhoneSize(
      this,
      smallPhone: 12.0,
      largePhone: 24.0,
      mediumPhone: 16.0,
    ),
  );

  EdgeInsets get verticalPadding => EdgeInsets.symmetric(
    vertical: ResponsiveHelper.getValueForPhoneSize(
      this,
      smallPhone: 12.0,
      largePhone: 16.0,
      mediumPhone: 14.0,
    ),
  );

  EdgeInsets get allPadding => EdgeInsets.all(
    ResponsiveHelper.getValueForPhoneSize(
      this,
      smallPhone: 12.0,
      largePhone: 16.0,
      mediumPhone: 14.0,
    ),
  );
}