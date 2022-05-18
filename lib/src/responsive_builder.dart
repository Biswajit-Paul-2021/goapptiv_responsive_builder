import 'package:flutter/material.dart';
import 'package:goapptiv_responsive_builder/src/mediaquery_extensions.dart';
import 'package:goapptiv_responsive_builder/src/sizing_info.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({Key? key, required this.child}) : super(key: key);
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) child;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return child(
            context,
            SizingInformation(
              orientation,
              Size(constraints.maxWidth, constraints.maxHeight),
              context.isMobile
                  ? DeviceScreenType.mobile
                  : DeviceScreenType.tablet,
              Size(context.screenWidth, context.screenHeight),
            ),
          );
        },
      );
    });
  }
}
