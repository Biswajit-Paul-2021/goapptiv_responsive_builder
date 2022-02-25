import 'package:flutter/material.dart';
import 'package:goapptiv_responsive_builder/src/mediaquery_extensions.dart';

class OrientationLayoutBuilder extends StatelessWidget {
  final Widget Function(BuildContext context) potraitLayout;
  final Widget Function(BuildContext context)? landscapeLayout;
  const OrientationLayoutBuilder({
    Key? key,
    required this.potraitLayout,
    this.landscapeLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.orientation == Orientation.landscape &&
        landscapeLayout != null) {
      return landscapeLayout!(context);
    }
    return potraitLayout(context);
  }
}
