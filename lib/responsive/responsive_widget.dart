import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'responsive_helper.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? landscape;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
    this.landscape,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (ResponsiveHelper.isLandscape(context) && landscape != null) {
          return landscape!;
        }
        return mobile;
      },
    );
  }
}

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context,
      BoxConstraints constraints,
      ) builder;

  const ResponsiveBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => builder(context, constraints),
    );
  }
}