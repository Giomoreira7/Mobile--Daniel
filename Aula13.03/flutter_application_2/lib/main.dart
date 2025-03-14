import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp responsavel pela construçao da tela
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        // barra do aplicativo
        appBar: AppBar(title: Text("App aula 07"),
        backgroundColor: Color.fromARGB(255, 8, 159, 182),),
        backgroundColor: Colors.white,
        body: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
          // alinhamento secundario 
          crossAxisAlignment: CrossAxisAlignment.start,      
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80,height: 80,color: Color.fromARGB(255, 0, 38, 44),),
                Container(width: 80,height: 80,color:Color.fromARGB(255, 1, 86, 99),),
                Container(width: 80,height: 80,color:Color.fromARGB(255, 0, 174, 201),),
              ],

            ),
            Stack(
              
              children: [
                Container(width: 400,height: 100,color: Color.fromARGB(255, 8, 159, 182),
                child: Text("Senai",
                style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),),
                Container(width: 80,height: 100,color:Color.fromARGB(255, 4, 53, 61),),
                 

              ],
            ),

             Stack(
              
              children: [
                Container(width: 400,height: 100,color: Color.fromARGB(255, 32, 133, 149),
                child: Text("Mobile 1",
                style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),),
                Container(width: 80,height: 100,color: Color.fromARGB(255, 4, 53, 61),),
                 

              ],
            ),



           

          
            

          ],
        ),
      ),
    );
  }
}