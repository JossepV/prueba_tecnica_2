import 'package:flutter/material.dart';

const double _dropdownBorderRadius = 12.0;

class CustomButton extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onTap;
  final double height;
  final double? width;
  final Widget child;
  final bool withBorder;

  const CustomButton({
    super.key,
    required this.isOpen,
    required this.onTap,
    this.height = 40,
    this.width,
    required this.withBorder,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        decoration: BoxDecoration(
          border: withBorder
              ? Border.all(
                  style: BorderStyle.solid,
                  color: Colors.black,
                  width: 1,
                )
              : null,
          color: Colors.white,
          borderRadius: BorderRadius.circular(_dropdownBorderRadius),
        ),
        height: height,
        width: width,
        child: Padding(
            padding: EdgeInsets.all(height < 50 ? 5 : 10), child: child),
      ),
    );
  }
}