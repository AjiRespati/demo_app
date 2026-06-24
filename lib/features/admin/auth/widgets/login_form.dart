import 'package:demo_app/widgets/custom_glass_button.dart';
import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/widgets/input/glass_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),

          GlassTextField(
            controller: _emailController,
            placeholder: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),

          const SizedBox(height: 16),

          GlassTextField(
            controller: _passwordController,
            placeholder: 'Password',
            obscureText: true,
          ),

          const SizedBox(height: 24),

          CustomGlassButton(
            icon: Icon(Icons.login, color: Colors.white, size: 18),
            label: 'Login',
          ),
        ],
      ),
    );
  }
}
