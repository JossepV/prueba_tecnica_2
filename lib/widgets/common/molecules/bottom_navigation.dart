import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/bottom_navigation_item.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 32),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
            offset: Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigationItem(
            icon: Icons.home,
            label: 'Inico',
            isSelected: selectedIndex == 0,
            onTap: () => _onItemTapped(0),
          ),
          BottomNavigationItem(
            icon: Icons.calendar_today_outlined,
            label: 'Reservas',
            isSelected: selectedIndex == 1,
            onTap: () => _onItemTapped(1),
          ),
          BottomNavigationItem(
            icon: Icons.heart_broken_outlined,
            label: 'Favoritos',
            isSelected: selectedIndex == 2,
            onTap: () => _onItemTapped(2),
          ),
        ],
      ),
    );
  }
}