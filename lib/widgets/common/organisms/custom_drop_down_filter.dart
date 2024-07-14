import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/custom_drop_down_item.dart';
import 'package:preuba_tecnica/widgets/common/molecules/custom_drop_down_button.dart';
import 'package:preuba_tecnica/widgets/common/molecules/custom_drop_down_menu.dart';

const Duration _animationDuration = Duration(milliseconds: 200);

class CustomDropdownFilter extends StatefulWidget {
  final List<CustomDropdownItem> menuItems;
  final String? title;
  const CustomDropdownFilter({
    super.key,
    required this.menuItems,
    this.title,
  });

  @override
  CustomDropdownFilterState createState() => CustomDropdownFilterState();
}

class CustomDropdownFilterState extends State<CustomDropdownFilter>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _isMenuOpen = false;
  late String _dropdownTitle = widget.title ?? 'Agregar Instructor';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );
  }

  void _toggleDropdown() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
      if (_isMenuOpen) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  void _onItemTap(String title) {
    setState(() {
      _dropdownTitle = title;
      _toggleDropdown();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDropdownButton(
          title: _dropdownTitle,
          isOpen: _isMenuOpen,
          onTap: _toggleDropdown,
        ),
        CustomDropdownMenu(
          width: 154,
          menuItems: widget.menuItems,
          isOpen: _isMenuOpen,
          onItemTap: _onItemTap,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
