import 'package:flutter/material.dart';
import '../components/primary_button.dart';
import '../components/input_field.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
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
              "Create an Account",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            InputField(hintText: "Name", controller: nameController),
            const SizedBox(height: 16.0),
            InputField(hintText: "Email", controller: emailController),
            const SizedBox(height: 16.0),
            InputField(
                hintText: "Password",
                controller: passwordController,
                obscureText: true),
            const SizedBox(height: 32.0),
            PrimaryButton(text: "Sign Up", onPressed: () {}),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {},
              child: const Text("Already have an account? Login",
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
