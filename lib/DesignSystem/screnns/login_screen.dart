import 'package:flutter/material.dart';
import '../components/primary_button.dart';
import '../components/input_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Welcome back!",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            InputField(hintText: "Email", controller: emailController),
            const SizedBox(height: 16.0),
            InputField(
                hintText: "Password",
                controller: passwordController,
                obscureText: true),
            const SizedBox(height: 32.0),
            PrimaryButton(text: "Login", onPressed: () {}),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {},
              child: const Text("Don't have an account? Sign up",
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
