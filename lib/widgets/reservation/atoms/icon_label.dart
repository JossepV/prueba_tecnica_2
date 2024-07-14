import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class IconLabel extends StatelessWidget {
  const IconLabel({
    super.key,
    required this.icon,
    required this.title,
    this.colorIcon,
    this.colorTitle,
    this.sizeIcon,
    this.sizeTitle,
    this.alignment,
  });
  final IconData icon;
  final String title;
  final Color? colorIcon;
  final Color? colorTitle;
  final double? sizeIcon;
  final double? sizeTitle;
  final MainAxisAlignment? alignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment ?? MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: colorIcon ?? Colors.grey,
          size: sizeIcon ?? 14,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: title,
          color: colorTitle ?? Colors.black,
          size: sizeTitle ?? 12,
        ),
      ],
    );
  }
}
