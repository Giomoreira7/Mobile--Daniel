import 'package:appeco/screens/chatbot.dart';
import 'package:appeco/screens/controle.dart';
import 'package:appeco/screens/dados.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Painel Principal',
      debugShowCheckedModeBanner: false,
      home: const MainPanelScreen(),
    );
  }
}

class MainPanelScreen extends StatelessWidget {
  const MainPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painel Principal'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF025A40),
                ),
                height: 200,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/textpainel.png',
                      height: 210,
                      width: 210,
                    ),
                    Container(
                      height: 140,
                      width: 140,
                      color: const Color(0xFF025A40),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'images/painel1.png',
                          height: 350,
                          width: 500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Blocos informativos
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF8FC04B),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 120,
                child: Row(
                  children: [
                    _buildInfoCard(Icons.map_outlined, 'Total da área', '452,98 m'),
                    _verticalDivider(),
                    _buildInfoCard(Icons.agriculture, 'Colheita', '30 dias'),
                    _verticalDivider(),
                    _buildInfoCard(Icons.notifications_active_outlined, 'Notificação', '6'),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Cards de navegação
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard(context, 'Coleta de Dados ', 'images/dados.png', const DadosScreen()),
                  _buildCard(context, 'Sistema de Controle', 'images/controle.png', const SistemaControle()),
                  _buildCard(context, 'Assistente Minds', 'images/chatb.png', const ChatScreen()),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomCardBar(), // RODAPÉ COM CÍRCULO
    );
  }

  // Rodapé com círculo branco e casinha verde
  Widget _buildBottomCardBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF8FC04B),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 6),
        ],
      ),
      child: Center(
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.home, color: Color(0xFF025A40), size: 30),
        ),
      ),
    );
  }

  // Blocos verdes informativos com ícones
  Widget _buildInfoCard(IconData icon, String title, String value) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 36),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }

  // Divisor vertical entre os blocos
  Widget _verticalDivider() {
    return Container(
      width: 1,
      height: 60,
      color: Colors.white24,
    );
  }

  // Cards de navegação
  Widget _buildCard(BuildContext context, String title, String imagePath, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 110,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 60,
                width: 50,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Telas de navegação


class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela 2")),
      body: const Center(child: Text("Bem-vindo à Tela 2!")),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela 3")),
      body: const Center(child: Text("Bem-vindo à Tela 3!")),
    );
  }
}
