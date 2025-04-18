import 'package:flutter/material.dart';
import 'screens/login.dart'; // <- letra minúscula no nome do arquivo

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
      backgroundColor: Colors.white, // Fundo branco
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo centralizado
            Image.asset(
              'assets/logo.png',
              height: 150,
            ),
            const SizedBox(height: 50),

            // Seta para ir ao login
            IconButton(
              icon: const Icon(Icons.arrow_forward, size: 40),
              onPressed: () {
                print("Seta clicada!");
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
