import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RmResponsive extends StatelessWidget {
  const RmResponsive({super.key, required this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      child,
      maxWidth: 1920,
      minWidth: 480,
      defaultScale: true,
      breakpoints: const [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      ],
      background: Container(color: const Color(0xFFF5F5F5)),
    );
  }
}
