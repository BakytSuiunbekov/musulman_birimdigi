import 'package:flutter/material.dart';
import 'package:musulman_birimdigi/components/my_button.dart';
import 'package:musulman_birimdigi/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwlController = TextEditingController();
  final Function()? onTap;
  LoginPage({
    super.key,
    required this.onTap,
  });
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 50),
          Text(
            'Welcome back, you`ve been missed!',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            hintText: "password",
            obscureText: true,
            controller: _pwlController,
          ),
          const SizedBox(height: 25),
          MyButton(
            text: " login",
            onTap: login,
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Text(
                'not a number? ',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  'Regisster now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
