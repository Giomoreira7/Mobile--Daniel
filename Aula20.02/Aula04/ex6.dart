// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){
  print( "Insira a primeira idade :  ");
  int idadePessoa1 = int.parse(stdin.readLineSync()!);

  print("Insira a idade da segunda pessoa:  ");
  int idadePessoa2 = int.parse(stdin.readLineSync()!);

  if (idadePessoa1 > idadePessoa2){
    print("A pessoa 01 é mais velha que a pessoa 02")
  }
  else if (idadePessoa2 > idadePessoa1){
    print("A pessoa 02 é mais velha que a pessoa 01")
  }
}