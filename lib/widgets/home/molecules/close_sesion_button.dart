import 'package:flutter/material.dart';
import 'package:preuba_tecnica/screens/login_screen.dart';
import 'package:preuba_tecnica/widgets/common/atoms/primary_button.dart';
import 'package:preuba_tecnica/widgets/reservation/atoms/icon_label.dart';

class CloseSesionButton extends StatelessWidget {
  const CloseSesionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      right: 16,
      child: PrimaryButton(
        withBorder: true,
        height: 35,
        width: 120,
        colors: const [Colors.white, Colors.white],
        label: '',
        child: const IconLabel(
          icon: Icons.exit_to_app,
          title: 'Cerrar Sesion',
          alignment: MainAxisAlignment.center,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
      ),
    );
  }
}