import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SistemaControle(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SistemaControle extends StatelessWidget {
  const SistemaControle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00695C),
        leading: const BackButton(color: Colors.white),
        title: const Text("Sistema de Controle", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return PlantaCard(plantaIndex: index + 1);
        },
      ),
    );
  }
}

class PlantaCard extends StatelessWidget {
  final int plantaIndex;

  const PlantaCard({super.key, required this.plantaIndex});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              'images/lumi.png',
              width: 50,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Planta $plantaIndex", style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _buildButton("Liga", const Color(0xFF025A40)),
                      const SizedBox(width: 8),
                      _buildButton("Desliga",  const Color(0xFF8FC04B)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Column(
              children: [
                const Text("Irrigação"),
                const SizedBox(height: 6),
                Row(
                  children: [
                    _buildStatusCircle(Colors.green),
                    const SizedBox(width: 4),
                    _buildStatusCircle(Colors.red),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(70, 36),
      ),
      child: Text(text),
    );
  }

  Widget _buildStatusCircle(Color color) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
