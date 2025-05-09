import 'package:flutter/material.dart';
import 'screens/login.dart'; // Certifique-se de que login.dart está com nome minúsculo
import 'screens/cadastro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Login',
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1), // Fundo branco
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo centralizado
            Image.asset(
              'images/Logo.png',
              height: 500,
            ),
            const SizedBox(height: 50),

            // Seta que leva para a tela de login
        IconButton(
        icon: const Icon(
    Icons.arrow_forward,
    size: 50,
  ),
  color: Color(0xFF025A40), // Definindo a cor do ícone (pode ser qualquer cor que preferir)
  onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
