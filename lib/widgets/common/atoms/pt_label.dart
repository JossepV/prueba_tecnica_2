import 'package:flutter/material.dart';

//
class PtLabel {
  static Widget normal({
    required String label,
    required Color color,
    required double size,
    TextAlign? textAlign,
    double? spaceLines,
    bool visibleOverflow = false,
    int? maxLines = 1,
  }) {
    return Text(
      label,
      style: TextStyle(
          color: color,
          fontFamily: 'italic',
          fontSize: size,
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
          height: spaceLines),
      textAlign: textAlign,
      overflow: visibleOverflow ? TextOverflow.visible : TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }

  static Widget medium({
    required String label,
    required Color color,
    required double size,
    TextAlign? textAlign,
    double? spaceLines,
    int maxLines = 1,
  }) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontFamily: 'italic',
        fontSize: size,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.none,
        height: spaceLines,
      ),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }

  static Widget bold({
    required String label,
    required Color color,
    required double size,
    TextAlign? textAlign,
    double? spaceLines,
    int maxLines = 1,
  }) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontFamily: 'italic',
        fontSize: size,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
        height: spaceLines,
      ),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
