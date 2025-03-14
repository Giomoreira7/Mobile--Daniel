import 'package:flutter/material.dart';

void main() {
  runApp(const TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          Container(width: 200,color: Colors.blueGrey,),
          Stack(
            alignment:Alignment.center,
            children: [
              Container(width: 200,height: 100,color: Colors.deepOrange,),
              Container(width: 150,height: 80,color: Colors.teal,
              child: Text("SENAI",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,
              decoration: TextDecoration.none),))
            ],
          ),
          Container(width: 200,height: 200,color: Colors.pink,),
          Text("Aula 13.03",style:TextStyle(fontSize: 30,decoration:TextDecoration.none, color: Colors.white),),
          Container(width: 200,height: 100,color: Colors.red,),
          ElevatedButton(onPressed: (){
            print("Botao pressionado");
          }, child: Text("Mensagem")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container( width: 50,height: 50,color: Colors.amber,),
              Container( width: 50,height: 50,color: const Color.fromARGB(255, 123, 7, 255),),
              Container( width: 50,height: 50,color: Colors.greenAccent,),
              

            ],
          )
        ],
      ),
    );
  }
}