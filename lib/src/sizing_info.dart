import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet }

class SizingInformation {
  final Orientation _orientation;
  final Size _localWidgetsize;
  final DeviceType _deviceType;
  final Size _deviceScreenSize;

  Orientation get orientation => _orientation;
  Size get localWidgetSize => _localWidgetsize;
  DeviceType get deviceType => _deviceType;
  Size get deviceScreenSize => _deviceScreenSize;

  SizingInformation(
    this._orientation,
    this._localWidgetsize,
    this._deviceType,
    this._deviceScreenSize,
  );
}
