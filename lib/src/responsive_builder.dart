import 'package:flutter/material.dart';
import 'package:goapptiv_responsive_builder/src/mediaquery_extensions.dart';
import 'package:goapptiv_responsive_builder/src/sizing_info.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({Key? key, required this.mobile, this.tablet})
      : super(key: key);
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) mobile;
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation)? tablet;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return LayoutBuilder(
        builder: (context, constraints) {
          if (!context.isMobile && tablet != null) {
            return tablet!(
              context,
              SizingInformation(
                orientation,
                Size(constraints.maxWidth, constraints.maxHeight),
                DeviceType.tablet,
                Size(context.screenWidth, context.screenHeight),
              ),
            );
          }
          return mobile(
            context,
            SizingInformation(
              orientation,
              Size(constraints.maxWidth, constraints.maxHeight),
              DeviceType.mobile,
              Size(context.screenWidth, context.screenHeight),
            ),
          );
        },
      );
    });
  }
}
