import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/custom_drop_down_item.dart';

const double _dropdownBorderRadius = 12.0;

const Duration _animationDuration = Duration(milliseconds: 200);

class CustomDropdownMenu extends StatelessWidget {
  final List<CustomDropdownItem> menuItems;
  final bool isOpen;
  final Function(String) onItemTap;
  final double? width;
  final Color? backgroundColor;
  final double? menuHeightPerItem;

  const CustomDropdownMenu({
    super.key,
    required this.menuItems,
    required this.isOpen,
    required this.onItemTap,
    this.width,
    this.backgroundColor,
    this.menuHeightPerItem = 40,
  });

  @override
  Widget build(BuildContext context) {
    final menuHeight = menuItems.length * menuHeightPerItem!;

    return AnimatedContainer(
      duration: _animationDuration,
      curve: Curves.easeInOut,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.0),
      ),
      width: width ?? 225,
      height: isOpen ? menuHeight : 0.0,
      child: ClipRect(
        child: AnimatedOpacity(
          opacity: isOpen ? 1.0 : 0.0,
          duration: _animationDuration,
          child: _buildMenuContent(menuHeight),
        ),
      ),
    );
  }

  Widget _buildMenuContent(double menuHeight) {
    return Container(
      width: double.infinity,
      height: menuHeight,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(_dropdownBorderRadius),
          border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: menuItems.map(
              (CustomDropdownItem item) {
                return CustomDropdownItem(
                  withBorderdown: item.withBorderdown,
                  title: item.title,
                  onTap: () {
                    onItemTap(item.title);
                    item.onTap();
                  },
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
