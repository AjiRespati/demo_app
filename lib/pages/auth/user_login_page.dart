import 'package:flutter/material.dart';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Login'),
      ),
      body: const Center(
        child: Text(
          'User Login Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}