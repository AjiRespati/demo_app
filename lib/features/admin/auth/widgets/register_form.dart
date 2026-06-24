import 'package:demo_app/widgets/custom_glass_button.dart';
import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/widgets/input/glass_text_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
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
            controller: _usernameController,
            placeholder: 'User Name',
            keyboardType: TextInputType.emailAddress,
          ),

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
            icon: Icon(Icons.person_add_alt_1, color: Colors.white, size: 18),
            label: 'Register',
          ),
        ],
      ),
    );
  }
}
