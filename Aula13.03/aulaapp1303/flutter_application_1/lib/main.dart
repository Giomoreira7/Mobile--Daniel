import 'package:flutter/material.dart';

void main() {
  runApp(const TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          Container(width: 200,height: 200,color: Colors.pink,),
          Text("Aula 13.03"),
          Container(width: 200,height: 200,color: Colors.blue,),
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