import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/custom_drop_down_item.dart';
import 'package:preuba_tecnica/widgets/common/organisms/custom_drop_down_filter.dart';

class SelectInstructorWidget extends StatefulWidget {
  const SelectInstructorWidget({super.key});

  @override
  State<SelectInstructorWidget> createState() => _SelectInstructorWidgetState();
}

class _SelectInstructorWidgetState extends State<SelectInstructorWidget> {
  String? dropdownValue;
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return CustomDropdownFilter(
      menuItems: [
        CustomDropdownItem(
          onTap: () {},
          title: 'Marcos Jimenez',
        ),
        CustomDropdownItem(
          onTap: () {},
          title: 'Andrea Perez',
        ),
        CustomDropdownItem(
          onTap: () {},
          title: 'Pierina',
        ),
        CustomDropdownItem(
          onTap: () {},
          title: 'Josue Ramirez',
        ),
        CustomDropdownItem(
          onTap: () {},
          title: 'Daniela Porras',
        ),
      ],
    );
  }
}