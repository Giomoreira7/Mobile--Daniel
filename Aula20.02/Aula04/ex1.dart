// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

  print("Digite seu nome:");
  String nome = stdin.readLineSync()!;
  print("$nome");


  print("Digite seu curso:");
  String cursostrig = stdin.readLineSync()!;
  print("Curso : $cursostrig");

 print("Digite sua idade :");
  String idadestrig = stdin.readLineSync()!;
  print("Idade : $idadestrig");

}