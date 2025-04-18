import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100], // Cor de fundo
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagem Centralizada
              Image.asset(
                'assets/logo.png',
                height: 150,
              ),
              const SizedBox(height: 50),

              // Botão: Entrar com número de telefone
              ElevatedButton.icon(
                onPressed: () {
                  // Lógica de login com telefone
                  print("Entrar com Telefone");
                },
                icon: const Icon(Icons.phone),
                label: const Text("Entrar com Telefone"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
              const SizedBox(height: 20),

              // Botão: Entrar com Google
              ElevatedButton.icon(
                onPressed: () {
                  // Lógica de login com Google
                  print("Entrar com Google");
                },
                icon: Image.asset(
                  'assets/google_logo.png',
                  height: 24,
                  width: 24,
                ),
                label: const Text("Entrar com Google"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
