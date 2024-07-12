

import 'package:flutter/material.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Comienza en la esquina superior izquierda
    path.moveTo(0, 0);
    // Dibuja una línea recta hacia la esquina superior derecha
    path.lineTo(size.width, 0);
    // Dibuja una línea recta hacia la esquina inferior derecha
    path.lineTo(size.width, size.height * 0.7);
    // Dibuja una curva más pronunciada desde la esquina inferior derecha hacia la esquina superior izquierda
    path.quadraticBezierTo(size.width * 0.2, size.height * 1.2 , 0,  size.height * 0.05);
    // Cierra el path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}