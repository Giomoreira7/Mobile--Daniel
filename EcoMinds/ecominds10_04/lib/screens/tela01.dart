import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container no topo com fundo
        Container(
          width: double.infinity, // Faz o container ocupar toda a largura da tela
          height: 150, // Define a altura do container
          color: const Color.fromARGB(255, 255, 255, 255), // Cor de fundo do container
          child: Center(
            child: Text(
              "Container no topo", // Texto dentro do container
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        
        // Espaço entre o container e o próximo texto
        SizedBox(height: 2),

        // Texto "Mobile 1" centralizado
        Center(
          child: Text(
            "Mobile 1", 
            style: optionStyle,
          ),
        ),
      ],
    );
  }
}