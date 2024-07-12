
import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.leadingIcon,
    this.trailingWidget,
    this.hintText,
    this.hintStyle,
    this.onChanged,
    this.margin,
    this.maxLines = 1,
    this.keyboardType,
    this.padding,
    this.height = 60,
    this.suffixIcon,
    this.readOnly = false,
    this.obscureText = false,
    this.labelText,
  });

  final TextEditingController controller;
  final int maxLines;
  final EdgeInsetsGeometry? margin;
  final Widget? leadingIcon;
  final Widget? trailingWidget;
  final String? hintText;
  final TextStyle? hintStyle;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final EdgeInsets? padding;
  final double height;
  final Widget? suffixIcon;
  final bool readOnly;
  final bool obscureText;
  final String? labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 16,
          ),
      margin: margin,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null)
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: PtLabel.normal(
                label: labelText!,
                color: Colors.grey,
                size: 14,
              ),
            ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (leadingIcon != null) leadingIcon!,
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                color: Colors.grey,
                width: 2,
                height: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: keyboardType,
                  onChanged: onChanged,
                  style: const TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  controller: controller,
                  obscureText: obscureText,
                  maxLines: maxLines,
                  readOnly: readOnly,
                  decoration: InputDecoration(
                    suffixIcon: suffixIcon,
                    hintText: hintText,
                    border: InputBorder.none,
                    hintStyle: hintStyle ??
                        const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                    isDense: true,
                  ),
                ),
              ),
              if (trailingWidget != null) trailingWidget!,
            ],
          ),
        ],
      ),
    );
  }
}
