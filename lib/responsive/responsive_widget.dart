import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return mobile;
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
      builder: (context, constraints) {
        return builder(context, constraints);
      },
    );
  }
}