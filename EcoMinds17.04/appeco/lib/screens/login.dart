import 'package:flutter/material.dart';
import 'package:appeco/screens/painel.dart'; // Certifique-se de que o caminho está correto para o painel

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF025A40), // Cor de fundo
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
            crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
            children: [
              // Imagem Centralizada
              Image.asset(
                'images/login.png',
                height: 300, // Ajuste o tamanho da imagem conforme necessário
              ),
              const SizedBox(height: 30), // Ajuste o espaço entre a imagem e os botões

              // Botão: Entrar com número de telefone
              ElevatedButton.icon(
                onPressed: () {
                  // Lógica de login com telefone
                  debugPrint("Entrar com Telefone");
                },
                icon: const Icon(
                  Icons.phone,
                  color:  Color(0xFF025A40), // Cor personalizada do ícone de telefone
                ),
                label: const Text("Entrar com Telefone"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
              const SizedBox(height: 20), // Ajusta o espaço entre os botões

              // Botão: Entrar com Google
              ElevatedButton.icon(
                onPressed: () {
                  // Lógica de login com Google
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

              // Seta para navegar para a próxima tela
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward, // Ícone de seta
                  size: 30,
                  color: Colors.white, // Cor da seta
                ),
                onPressed: () {
                  // Navegação para a próxima tela (MainPanelScreen)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPanelScreen(), // Navega para o MainPanelScreen
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

