import 'package:flutter/material.dart';

void main() {
  runApp(
    // Design para Android
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
        backgroundColor: const Color.fromARGB(255, 155, 47, 237),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
            Container(width: 200,height: 200,color: const Color.fromARGB(255, 213, 161, 253),
            
            child: Text("Aplicativo Mobile",textAlign: TextAlign.center,     
                  style: TextStyle(fontSize: 20),),),
           // Text("Conteudo principal do aplicativo",style: TextStyle(fontSize: 20),),
          ],
        )
      ),
    
    );
  }
}