import 'package:flutter/material.dart';

extension CustomExtension on BuildContext {
  /// returns `true` for mobile devices
  bool get isMobile => MediaQuery.of(this).size.shortestSide <= 480;

  /// returns the orientation of the device
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// returns the total height of the screen
  double get screenHeight => MediaQuery.of(this).size.height;

  /// returns the total width of the screen
  double get screenWidth => MediaQuery.of(this).size.width;

  /// returns the text scale factor
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  /// returns the MediaQueryData object for legacy data
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  // /// returns total horizontal padding
  // double get horizontalPadding =>
  //     MediaQuery.of(this).viewPadding.bottom +
  //     MediaQuery.of(this).viewPadding.top;

  // /// returns total Vertical Padding
  // double get verticalPadding =>
  //     MediaQuery.of(this).viewPadding.left +
  //     MediaQuery.of(this).viewPadding.right;

  // /// returns the passed percentage height
  // double getHeight(double percentage) => (screenHeight * percentage) / 100;

  // /// returns the passed percentage width
  // double getWidth(double percentage) => (screenWidth * percentage) / 100;

  // Object? get arguments => ModalRoute.of(this)!.settings.arguments;

  // /// pushNamedRoute
  // Future<T?> pushNamed<T extends Object?>(String route, {Object? arguments}) =>
  //     Navigator.pushNamed(this, route, arguments: arguments);

  // /// popAndPushNamed
  // Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
  //   String route, {
  //   Object? arguments,
  //   TO? result,
  // }) =>
  //     Navigator.popAndPushNamed(
  //       this,
  //       route,
  //       arguments: arguments,
  //       result: result,
  //     );

  // /// pushNamedRoute
  // Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
  //   String route, {
  //   Object? arguments,
  //   TO? result,
  // }) =>
  //     Navigator.pushReplacementNamed(
  //       this,
  //       route,
  //       arguments: arguments,
  //       result: result,
  //     );

  // /// pop Route
  // void pop<T extends Object?>({T? result}) => Navigator.pop(this, result);
}
