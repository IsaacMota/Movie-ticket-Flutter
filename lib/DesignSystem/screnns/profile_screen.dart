import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage("https://via.placeholder.com/150"),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Angelina",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "angelina@example.com",
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            const SizedBox(height: 32.0),
            ListTile(
              leading: const Icon(Icons.edit, color: Colors.white),
              title: const Text("Edit Profile",
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navegar para a tela de edição de perfil
              },
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.white),
              title: const Text("Purchase History",
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // Mostrar o histórico de compras
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title:
                  const Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navegar para as configurações
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text("Logout", style: TextStyle(color: Colors.red)),
              onTap: () {
                // Sair da conta do usuário
              },
            ),
          ],
        ),
      ),
    );
  }
}
