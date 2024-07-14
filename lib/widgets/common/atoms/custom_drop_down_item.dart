import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class CustomDropdownItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool withBorderdown;

  const CustomDropdownItem({
    super.key,
    required this.onTap,
    required this.title,
    this.withBorderdown = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 4, top: 4),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          
          border: withBorderdown
              ? const Border(
                  bottom: BorderSide(
                    width: 0.5,
                    color: Colors.black,
                  ),
                )
              : null,
        ),
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 154,
              ),
              child: PtLabel.normal(
                label: title,
                color: Colors.black,
                size: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}