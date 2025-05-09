import 'package:flutter/material.dart';
import 'package:appeco/screens/painel.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF025A40),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/login.png',
                height: 300,
              ),
              const SizedBox(height: 30),

              ElevatedButton.icon(
                onPressed: () {
                  debugPrint("Entrar com Telefone");
                },
                icon: const Icon(
                  Icons.phone,
                  color: Color(0xFF025A40),
                ),
                label: const Text("Entrar com Telefone"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () {
                  debugPrint("Entrar com Google");
                },
                icon: Image.asset(
                  'images/login.png',
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
              const SizedBox(height: 20),

              // Botão de cadastro
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                icon: const Icon(
                  Icons.person_add,
                  color: Color(0xFF025A40),
                ),
                label: const Text("Cadastrar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
              const SizedBox(height: 20),

              IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPanelScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
