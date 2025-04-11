import 'package:ecominds10_04/screens/tela01.dart';
import 'package:ecominds10_04/screens/tela02.dart';
import 'package:ecominds10_04/screens/tela03.dart';
import 'package:ecominds10_04/screens/tela04.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NavBottom());
}

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen(),
    );
  }
}

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectindex = 0;

  // Lista de telas para BottomNavigationBar
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    CheckboxExample(),
    RadioButton(),
    ChatScreen(),
  ];

  // Função para alterar a tela ao selecionar um item no BottomNavigationBar
  void onItemTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foto Ecominds"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Column(
        children: [
          // Usando Stack para sobrepor o Container verde e o Container laranja
          Stack(
            children: [
              // Container verde
              Container(
                width: double.infinity, // Largura 100% da tela
                height: 400, // Aumenta a altura do container
                color: const Color(0xFF025A40), // Cor de fundo verde
                child: Center(
                  child: Text(
                    'Conteúdo dentro do Container Verde',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Container laranja sobrepondo o container verde
              Positioned(
                top: 300, // Posição um pouco abaixo do topo
                left: 1, // Posição à esquerda
                child: Container(
                  width: 700, // Largura do container laranja
                  height: 500, // Altura do container laranja
                  color: const Color.fromARGB(255, 255, 255, 255), // Cor de fundo do container laranja
                  child: Center(
                    child: Text(
                      "Container Laranja Sobreposto",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Espaço para separar o conteúdo do restante da tela
          SizedBox(height: 20),
          // Aqui você pode adicionar mais widgets se necessário
          Expanded(
            child: _widgetOptions.elementAt(selectindex),
          ),
        ],
      ),
      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'School',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_outlined),
            label: 'Business',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy_rounded),
            label: 'Chatbot',
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}