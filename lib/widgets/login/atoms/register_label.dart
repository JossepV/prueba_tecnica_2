import 'package:flutter/material.dart';
import 'package:preuba_tecnica/screens/register_screen.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class RegisterLabel extends StatelessWidget {
  const RegisterLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PtLabel.normal(
          label: '¿Aun no tienes cuenta?',
          color: Colors.black,
          size: 14,
        ),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegistroScreen()),
            );
          },
          child: PtLabel.normal(
            label: 'Regístrate',
            color: Colors.blue,
            size: 14,
          ),
        ),
      ],
    );
  }
}
