// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){
  print("Insira o primeiro valor: ")
  double v1 = double.parse(stdin.readLineSync()!);

  print("Insira o segundo valor: ");
  double v2 = double.parse(stdin.readLineSync()!);

  print("Insira o terceiro valor: ");
  double v3 = double.parse(stdin.readLineSync()!);

  print("Insira o  quarto valor: ");
  double v4 = double.parse(stdin.readLineSync()!);

  print("Escolha a operação que deseja realizar entre as seguintes opções:");
  print("+ - Soma (+)");
  print("- - Subtração (-)");
  print("* - Multiplicação (*)");
  print("/ - Divisão (/)");


 String escolha = stdin.readLineSync()!.toUpperCase();
 
  if (escolha == "+") {
    soma = v1 + v2 + v3 + v4;
    print(" Soma (+) = $soma");
  } 

  if (escolha == "-") {
    subtração = v1 - v2 - v3 - v4;
    print("Subtração (-) = $subtracao");
  }

   if (escolha == "*") {
    multiplicação = v1 * v2 * v3 * v4;
    print("Multiplicação (*) = $multiplicacao");
  } 
  
   if (escolha == "/") {
      divisão = v1 / v2 / v3 / v4;
       print("Divisão (/) = $divisao");
    } 

}
