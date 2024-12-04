import 'package:flutter/material.dart';
import 'package:fluttermovie/DesignSystem/components/input_field.dart';
import 'package:fluttermovie/DesignSystem/components/primary_button.dart';
import 'package:fluttermovie/movieapp/language.dart';
import 'package:fluttermovie/movieapp/singupp.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fundo preto
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              // Navega para a tela de escolha de idioma
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChooseLanguageScreen()),
              );
            },
            icon: const Icon(Icons.language,
                color: Colors.amber), // Ícone de idioma
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Título
            Text(
              'MBooking hello!',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            // Subtítulo
            Text(
              'Login to your account',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // Campo de Email
            InputField(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 16),
            // Campo de Senha
            InputField(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 24),
            // Botão de Login
            PrimaryButton(
              text: 'Sign In',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
            ),
            const SizedBox(height: 16),
            // Botão para Sign Up
            TextButton(
              onPressed: () {},
              child: Text(
                'Don’t have an account? Sign Up',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.amber,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
