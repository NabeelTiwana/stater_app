import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:starter_app/responsive/responsive_text_style.dart';
import '../../../responsive/responsive_helper.dart';
 // Make sure to import your responsive helper

class MyEmailFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final bool readOnly;
  final VoidCallback? onTap;
  final double? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final bool? enabled;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? style;
  final Color? fillColor;
  final bool filled;

  const MyEmailFormField({
    super.key,
    this.controller,
    this.hintText = 'Email',
    this.labelText = 'Email',
    this.prefixIcon = const Icon(Iconsax.direct_right),
    this.suffixIcon,
    this.onChanged,
    this.readOnly = false,
    this.onTap,
    this.borderRadius,
    this.contentPadding,
    this.enabled,
    this.hintStyle,
    this.labelStyle,
    this.style,
    this.fillColor,
    this.filled = false,
  });

  // Email validation regex
  static bool _validateEmail(String email) {
    return RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    ).hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!_validateEmail(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onChanged: onChanged,
      readOnly: readOnly,
      onTap: onTap,
      enabled: enabled,
      style: style ?? context.responsiveBodyMedium,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        fillColor: fillColor,
        hintStyle: hintStyle ?? context.responsiveBodyMedium?.copyWith(
          color: Colors.grey.shade600,
        ),
        labelStyle: labelStyle ?? context.responsiveBodyLarge,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(
          vertical: ResponsiveHelper.getValueForPhoneSize(
            context,
            smallPhone: 14,
            largePhone: 16,
            mediumPhone: 15,
          ),
          horizontal: ResponsiveHelper.getValueForPhoneSize(
            context,
            smallPhone: 12,
            largePhone: 16,
            mediumPhone: 14,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 8.0,
              largePhone: 12.0,
              mediumPhone: 10.0,
            ),
          ),
          borderSide: const BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 8.0,
              largePhone: 12.0,
              mediumPhone: 10.0,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 0.8,
              largePhone: 1.0,
              mediumPhone: 0.9,
            ),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 8.0,
              largePhone: 12.0,
              mediumPhone: 10.0,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.blue,
            width: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 1.5,
              largePhone: 2.0,
              mediumPhone: 1.8,
            ),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 8.0,
              largePhone: 12.0,
              mediumPhone: 10.0,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.red,
            width: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 1.5,
              largePhone: 2.0,
              mediumPhone: 1.8,
            ),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 8.0,
              largePhone: 12.0,
              mediumPhone: 10.0,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.red,
            width: ResponsiveHelper.getValueForPhoneSize(
              context,
              smallPhone: 1.5,
              largePhone: 2.0,
              mediumPhone: 1.8,
            ),
          ),
        ),
      ),
    );
  }
}