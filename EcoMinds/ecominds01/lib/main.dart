import 'package:flutter/material.dart';
import 'package:appaula10_ta/tela02.dart';
import 'package:appaula10_ta/tela03.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}

// cria uma classe do tipo Stateless
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  // polimorfismo que permite tratar as funções de forma particular
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer propriedade do Scaffold que permite criar um elemento lateral
    drawer: Drawer(
      child: ListView(
        // adicionando espaçamento com o padding
        padding: EdgeInsets.zero,
        // children pois utilizaremos mais de um widget
        children: [
          // Widget DrawerHeader vamos colocar o titulo do Drawer
         DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.brown
          ),
          
          child: Text('Menu',style: TextStyle(color: Colors.white),)),
          ListTile(title: Text('Opção 1'),),
          ListTile(title: Text('Opção 2'),)
        ],
       ),
    ),
    // criando o appbar

    appBar: AppBar(
      // atribuindo cor ao appbar
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    
    elevation: 5,
    iconTheme: IconThemeData(color: const Color.fromARGB(255, 83, 45, 45)),
    // centraliza o titulo do aplicativo
    centerTitle: true,
    title: Row(
      children: [
        Image.asset('images/image 8.png',height: 120,width: 200,),
        Padding(padding: EdgeInsets.all(12),
        child: Text('',
        style: TextStyle(fontSize:20,
        fontWeight: FontWeight.w800,
        color: const Color.fromARGB(255, 255, 255, 255) ),),
        ),

        Spacer(),
        // permite colocar a foto do usuario logado por exemplo
        CircleAvatar(
          backgroundColor: Colors.brown[100],
          child: Icon(Icons.person,color: Colors.brown,),
        ),
      ],
    ),

    ),
    // corpo do Scaffold
    body: Column(
      children: [
         _Card(
        icon: Icons.analytics_outlined, 
        label: 'Monitoramento', 
        onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ColetaDadosScreen()));

        }),

        // Cria botoes em Card
       _DashboardButton(
        icon: Icons.analytics_outlined, 
        label: 'Monitoramento', 
        onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ColetaDadosScreen()));

        }),

        SizedBox(height: 10,),
         _DashboardButton(
        icon: Icons.settings_remote_outlined, 
        label: 'Sistema de controle', 
        onTap: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context)=>Telaacionamento()));
        }),

        SizedBox(height: 10,),
         _DashboardButton(
        icon: Icons.smart_toy_outlined ,
        label: 'Chatbot', 
        onTap: (){}),
       
      ],
    ),
    // cria widget Botton Navigator
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 73, 48, 43),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ''),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: ''),
          
      ],
    ),
    );
  }
}



// Cria uma classe chamada DashboardButton


class _DashboardButton extends StatelessWidget {
  

  // Criando atributos para a classe

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  // Criando construtor com passagem de parametros obrigatorios

  const _DashboardButton({required this.icon,required this.label, 
  
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    //  novo widget que permite tocar na tela
    return InkWell(
     onTap: onTap,
     child: Card(
      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1)),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 12),
        child: Row(
          children: [
            Icon(
              icon,color: Colors.brown,size: 20,
            ),
            SizedBox(width: 16,),
            Text(label,style: TextStyle(
              fontSize: 18,color: Colors.brown
            ),)
          ],
        ),),
      
     ),
    );
  }
}


class _Card extends StatelessWidget {
  

  // Criando atributos para a classe

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  // Criando construtor com passagem de parametros obrigatorios

  const _Card({required this.icon,required this.label, 
  
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    //  novo widget que permite tocar na tela
    return InkWell(
     onTap: onTap,
     child: Card(
      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1)),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 12),
        child: Row(
          children: [
            Icon(
              icon,color: Colors.brown,size: 40,
            ),
            SizedBox(width: 16,),
            Text(label,style: TextStyle(
              fontSize: 18,color: Colors.brown
            ),)
          ],
        ),),
      
     ),
    );
  }
}