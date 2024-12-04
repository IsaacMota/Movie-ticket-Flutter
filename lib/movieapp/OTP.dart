import 'package:flutter/material.dart';
import 'package:fluttermovie/DesignSystem/components/primary_button.dart';
import 'package:fluttermovie/movieapp/EnterUser.dart';

class OTPScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Confirm OTP Code',
            style: TextStyle(color: Colors.white)),
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
            // Campo para inserir o código OTP
            TextField(
              controller: otpController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Enter OTP code',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 12.0),
              ),
            ),
            const SizedBox(height: 24),
            // Botão Continuar
            PrimaryButton(
              text: 'Continue',
              onPressed: () {
                // Navegar para a próxima tela
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EnterUsernameScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
