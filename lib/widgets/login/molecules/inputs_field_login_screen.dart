import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/common/molecules/custom_check_box.dart';
import 'package:preuba_tecnica/widgets/common/molecules/custom_text_field.dart';

class InputsFieldLoginScreen extends StatefulWidget {
  const InputsFieldLoginScreen({
    super.key,
    required this.passwordController,
    required this.emailController,
  });
  final TextEditingController passwordController;
  final TextEditingController emailController;
  @override
  State<InputsFieldLoginScreen> createState() => _InputsFieldLoginScreenState();
}

class _InputsFieldLoginScreenState extends State<InputsFieldLoginScreen> {
  bool isVisible = false;
  bool rememberPassword = false;
  final double height = 80;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          height: height,
          controller: widget.emailController,
          leadingIcon: const Icon(
            Icons.email_outlined,
            color: Colors.grey,
          ),
          hintText: 'Usuario@email.com',
          keyboardType: TextInputType.emailAddress,
          labelText: 'Email',
          suffixIcon: const SizedBox(),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          height: height,
          controller: widget.passwordController,
          leadingIcon: const Icon(
            Icons.lock_outline,
            color: Colors.grey,
          ),
          hintText: '**********',
          keyboardType: TextInputType.emailAddress,
          labelText: 'Constraseña',
          obscureText: isVisible,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Icon(
              
              isVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
                  color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            CustomCheckBox(
              value: rememberPassword,
              onCheckboxChanged: (p0) {
                setState(() {
                  rememberPassword = p0;
                });
              },
            ),
            const SizedBox(
              width: 8,
            ),
            PtLabel.normal(
              label: 'Recordar constraseña',
              color: rememberPassword ? Colors.grey : Colors.black,
              size: 14,
            ),
          ],
        )
      ],
    );
  }
}
