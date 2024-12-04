import 'package:flutter/material.dart';
import 'package:fluttermovie/DesignSystem/components/input_field.dart';
import 'package:fluttermovie/DesignSystem/components/primary_button.dart';
import 'package:fluttermovie/movieapp/OTP.dart';

class SignUp extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Sign Up', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () {
            Navigator.pop(context); // Voltar para a tela anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Sign up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Enter your phone number to create an account',
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // Campo de telefone
            InputField(
              hintText: 'Enter your phone number',
              controller: phoneController,
            ),
            const SizedBox(height: 16),
            // Botão Continuar
            PrimaryButton(
              text: 'Continue',
              onPressed: () {
                // Navegar para a tela de OTP
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTPScreen()),
                );
              },
            ),
            const SizedBox(height: 32),
            // Ou continue com
            const Text(
              'Or continue with',
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // Botões Google e Facebook
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Botão Google
                ElevatedButton.icon(
                  onPressed: () {
                    // Lógica de autenticação com Google
                  },
                  icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                  label: const Text('Google'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                  ),
                ),
                // Botão Facebook
                ElevatedButton.icon(
                  onPressed: () {
                    // Lógica de autenticação com Facebook
                  },
                  icon: const Icon(Icons.facebook, color: Colors.blue),
                  label: const Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
