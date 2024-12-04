import 'package:flutter/material.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fundo preto
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Choose Language',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'English',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.check, color: Colors.amber),
              onTap: () {
                // Seleciona o idioma e retorna para a tela anterior
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Vietnamese',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Seleciona o idioma e retorna para a tela anterior
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
