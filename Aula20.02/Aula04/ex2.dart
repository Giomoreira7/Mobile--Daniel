// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

 double b,h, A;

 print("Digite a base do triângulo:");

 b= double.parse(stdin.readLineSync()!);


 print("Digite a altura do triângulo :");
  h = double.parse(stdin.readLineSync()!);

  A = (b *h)/2;

  print("A área do triângulo é: $A");
}