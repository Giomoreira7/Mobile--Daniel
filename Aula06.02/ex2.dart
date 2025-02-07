// importa a biblioteca dart io

import 'dart:io';

void main (){


  print("Digite seu nome :");
  String nome = stdin.readLineSync()!;
  print("$nome");


  print("Digite sua idade");
  String idadestrig = stdin.readLineSync()!;
  print("Idade : $idadestrig");
}