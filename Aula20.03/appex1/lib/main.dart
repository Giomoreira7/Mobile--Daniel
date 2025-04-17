import 'package:flutter/material.dart';

void main() {
  runApp(const ContTech());
}

class ContTech extends StatelessWidget {
  const ContTech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Atividade-08"),
          ),

          body: Home(),
        ));
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int contador = 0;
  String nome = "";


  _incrementar() {
    setState(() {
      contador++;
    });
  }


  _resetar() {
    setState(() {
      contador = 0;
    });
  }

  _exibeNome() {
    setState(() {
      nome = "Giovanna";
    });
  }

  _limparNome() {
    setState(() {
      nome = "";
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 176, 91, 255),
              child: Text(
                "Contador: ${contador}",
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 174, 152, 255),
              child: Text(
                nome,
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: _incrementar, icon: Icon(Icons.plus_one)),
            IconButton(onPressed: _resetar, icon: Icon(Icons.restart_alt)),
            IconButton(onPressed: _exibeNome, icon: Icon(Icons.visibility)),
            IconButton(
                onPressed: _limparNome, icon: Icon(Icons.visibility_off)),
          ],
        ),
      ],
    );
  }
}