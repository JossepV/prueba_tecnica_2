import 'package:flutter/material.dart';
import 'package:preuba_tecnica/screens/home_screen.dart';
import 'package:preuba_tecnica/widgets/common/atoms/custom_icon_button.dart';
import 'package:preuba_tecnica/widgets/common/atoms/primary_button.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/login/molecules/custom_curved_container.dart';
import 'package:preuba_tecnica/widgets/login/molecules/inputs_field_register_screen.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Positioned(top: 0, left: 0, right: 0, child: CustomCurverContainer()),
          Positioned.fill(
            top: 45,
            left: 32,
            right: 16,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    radius: 12,
                    onTap: () {},
                    size: 34,
                    backgroundColor: Colors.green,
                    icon: Icons.arrow_back,
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  PtLabel.bold(
                    label: 'Registro',
                    color: Colors.black,
                    size: 32,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 75,
                    height: 1,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InputsFieldRegisterScreen(
                    emailController: TextEditingController(),
                    passwordController: TextEditingController(),
                    confirmPasswordController: TextEditingController(),
                    nameController: TextEditingController(),
                    phoneController: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    label: 'Registrarme',
                    labelSize: 18,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    colorLabel: Colors.white,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
