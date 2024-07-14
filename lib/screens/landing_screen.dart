import 'package:flutter/material.dart';
import 'package:preuba_tecnica/screens/login_screen.dart';
import 'package:preuba_tecnica/screens/register_screen.dart';
import 'package:preuba_tecnica/widgets/common/atoms/background_picture.dart';
import 'package:preuba_tecnica/widgets/common/atoms/primary_button.dart';
import 'package:preuba_tecnica/widgets/home/atoms/logo_landing.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            child: BackgroundPicture(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              imageUrl:
                  'https://as2.ftcdn.net/v2/jpg/00/86/61/69/1000_F_86616923_kMsbzu8AILuMwcWMaybWUbbxLsEVTya3.jpg',
            ),
          ),
          Positioned(top: 150, right: 50, left: 50, child: LogoLanding()),
          Positioned(
            bottom: 50,
            left: 32,
            right: 32,
            child: Column(
              children: [
                PrimaryButton(
                  width: double.infinity,
                  label: 'Inicar Sesión',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  labelSize: 18,
                  colorLabel: Colors.white,
                ),
                const SizedBox(
                  height: 16,
                ),
                PrimaryButton(
                  width: double.infinity,
                  label: 'Resgistrarme',
                  colorLabel: Colors.white,
                  labelSize: 18,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistroScreen(),
                      ),
                    );
                  },
                  colors: [
                    Colors.grey.withOpacity(0.7),
                    Colors.grey.withOpacity(0.7),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
