import 'package:flutter/material.dart';
import 'package:musulman_birimdigi/components/my_button.dart';
import 'package:musulman_birimdigi/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmpwController = TextEditingController();
  final Function()? onTap;
  RegisterPage({
    super.key,
    required this.onTap,
  });
  void register() {}

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
            'Let`s create an accaunt for you!',
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
            hintText: " password",
            obscureText: true,
            controller: _pwController,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            hintText: "Confirm password",
            obscureText: true,
            controller: _confirmpwController,
          ),
          const SizedBox(height: 25),
          MyButton(
            text: " Register",
            onTap: register,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an accaunt?',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  'Login now',
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
