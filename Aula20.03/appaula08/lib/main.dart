import 'package:flutter/material.dart';

void main() {
  runApp(
    // Design para Android
    MaterialApp(
    home: Home(),
  ));
}
// Cria uma classe do tipo Stateless chamada Home
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 08"),
        backgroundColor: Colors.purpleAccent,
        actions: [
          IconButton(onPressed: (){
            print("Busca Acionada");
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: () {
            print("Mais opções acionadas");
          }, icon: Icon(Icons.more_vert)),
        ],
        
      ),

      body: Center(
        child: Text("Conteudo principal do aplicativo",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}