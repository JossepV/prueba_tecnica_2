import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/login/atoms/diagonal_clipper.dart';

class CustomCurverContainer extends StatelessWidget {
  const CustomCurverContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiagonalClipper(),
      child: Container(
        width: double.infinity,
        height: 300, 
        decoration: const BoxDecoration(
          color: Colors.blue, 
          image: DecorationImage(
            image: AssetImage('assets/tenis.png'), 
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}