import 'package:flutter/material.dart';

class DadosScreen extends StatelessWidget {
  const DadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Coleta de Dados',
          style: TextStyle(
            color: Colors.white, // Cor do texto do título
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF025A40), // Cor do fundo do AppBar
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDataCard(context, 'images/umidade.png', 'Umidade do Solo'),
          _buildDataCard(context, 'images/temp.png', 'Temperatura'),
          _buildDataCard(context, 'images/lumi.png', 'Luminosidade'),
          _buildDataCard(context, 'images/ph.png', 'Níveis de pH'),
        ],
      ),
      bottomNavigationBar: _buildBottomCardBar(),
    );
  }

  Widget _buildDataCard(BuildContext context, String imagePath, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navegação para a tela de gráficos
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GraficoScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Color(0xFF025A40)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text(
                        'Gráfico',
                        style: TextStyle(
                          color: Color(0xFF025A40),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

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
}

// Placeholder para a tela de gráficos
class GraficoScreen extends StatelessWidget {
  const GraficoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gráfico'),
        backgroundColor: const Color(0xFF025A40),
      ),
      body: const Center(
        child: Text('Aqui será exibido o gráfico'),
      ),
    );
  }
}
