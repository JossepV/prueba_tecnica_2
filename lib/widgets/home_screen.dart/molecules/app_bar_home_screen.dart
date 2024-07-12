import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/molecules/card_circle_avatar.dart';
import 'package:preuba_tecnica/widgets/home_screen.dart/atoms/logo.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 90,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.black, Colors.green],
          stops: [0.0, 0.7],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Logo(),
          const Expanded(child: SizedBox()),
          const CardCircleAvatar(
            radius: 12,
            imageUrl:
                'https://as1.ftcdn.net/v2/jpg/02/43/12/34/1000_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
