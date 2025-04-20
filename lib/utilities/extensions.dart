import 'package:flutter/material.dart';

extension SpacingExtension on num {
  /// Adds vertical space
  Widget get verticalSpace => SizedBox(height: toDouble());

  /// Adds horizontal space
  Widget get horizontalSpace => SizedBox(width: toDouble());
}