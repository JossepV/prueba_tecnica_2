import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/molecules/custom_text_field.dart';

class InputsFieldRegisterScreen extends StatefulWidget {
  const InputsFieldRegisterScreen({
    super.key,
    required this.passwordController,
    required this.emailController,
    required this.phoneController,
    required this.nameController,
    required this.confirmPasswordController,
  });
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController nameController;
  final TextEditingController confirmPasswordController;
  @override
  State<InputsFieldRegisterScreen> createState() =>
      _InputsFieldRegisterScreenState();
}

class _InputsFieldRegisterScreenState extends State<InputsFieldRegisterScreen> {
  bool isVisiblePassword = false;
  bool isVisibleConfirmPassword = false;
  final double height = 80;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          height: height,
          controller: widget.nameController,
          leadingIcon: const Icon(
            Icons.person_2_outlined,
            color: Colors.grey,
          ),
          hintText: 'Nombre y apellido',
          keyboardType: TextInputType.name,
          suffixIcon: const SizedBox(),
        ),
        spacer(),
        CustomTextField(
          height: height,
          controller: widget.emailController,
          leadingIcon: const Icon(
            Icons.email_outlined,
            color: Colors.grey,
          ),
          hintText: 'Usuario@email.com',
          keyboardType: TextInputType.emailAddress,
          suffixIcon: const SizedBox(),
        ),
         spacer(),
         CustomTextField(
          height: height,
          controller: widget.phoneController,
          leadingIcon: const Icon(
            Icons.phone_android_sharp,
            color: Colors.grey,
          ),
          hintText: 'Teléfono',
          keyboardType: TextInputType.phone,
          suffixIcon: const SizedBox(),
        ),
        spacer(),
        CustomTextField(
          height: height,
          controller: widget.passwordController,
          leadingIcon: const Icon(
            Icons.lock_outline,
            color: Colors.grey,
          ),
          hintText: 'Constraseña',
          keyboardType: TextInputType.emailAddress,
          obscureText: isVisiblePassword,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isVisiblePassword = !isVisiblePassword;
              });
            },
            child: Icon(
              isVisiblePassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.grey,
            ),
          ),
        ),
        spacer(),
        CustomTextField(
          height: height,
          controller: widget.confirmPasswordController,
          leadingIcon: const Icon(
            Icons.lock_outline,
            color: Colors.grey,
          ),
          hintText: 'Confirmar Constraseña',
          keyboardType: TextInputType.emailAddress,
          obscureText: isVisibleConfirmPassword,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isVisibleConfirmPassword = !isVisibleConfirmPassword;
              });
            },
            child: Icon(
              isVisibleConfirmPassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  SizedBox spacer() {
    return const SizedBox(
        height: 20,
      );
  }
}
