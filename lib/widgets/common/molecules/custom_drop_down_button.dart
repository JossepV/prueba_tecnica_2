import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/custom_buttom.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class CustomDropdownButton extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onTap;
  final String title;
  final String? label;
  final double height;
  final double? width;
  final bool withBorder;
  final Color? colorTitle;
  const CustomDropdownButton({
    super.key,
    required this.isOpen,
    required this.onTap,
    required this.title,
    this.height = 50,
    this.withBorder = true,
    this.width,
    this.label,
    this.colorTitle,
  });

  @override
  Widget build(BuildContext context) {
    final colorSecundary = Theme.of(context).colorScheme.secondary;
    return CustomButton(
      width: width,
      withBorder: withBorder,
      height: height,
      isOpen: isOpen,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (label != null) ...[
                PtLabel.normal(
                  label: label!,
                  color: Colors.black,
                  size: 13,
                ),
                const SizedBox(
                  height: 2,
                ),
              ],
              PtLabel.normal(
                label: title,
                color: colorTitle ?? Colors.black,
                size: 13,
              ),
            ],
          ),
          const SizedBox(width: 10),
          Transform.rotate(
            angle: isOpen ? 7.85 : 4.7,
            child: Icon(
              Icons.chevron_left,
              color: colorSecundary,
            ),
          ),
        ],
      ),
    );
  }
}
