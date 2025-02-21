// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

  double preco = 0;

  print(" Insira a quantidade de kWh consumida?");
  int kWh = int.parse(stdin.readLineSync()!);

  print("Informe o tipo de instalação:");
  print("R - Residência");
  print("I - Indústrias");
  print("C - Comércio");

  String escolha = stdin.readLineSync()!.toUpperCase();

  if (tipo == "R"){
    if (kWh <= 500){
      preco = kWh * 0.50;
      print("Preço a pagar se a sua instalação Residência é acima de 500 kWh: $preco");
    } else {
      preco = kWh * 0.70;
      print("Preço a pagar se a sua instalação Residência vai até  500 kWh: $preco");
    }
  }
  if (tipo == "C"){
    if (kWh <= 5000){
      preco = kWh * 0.65;
      print("Preço a pagar se a sua instalação Comercial  é acima de   1000 kWh: $preco");
    } else {
      preco = kWh * 0.60;
      print("Preço a pagar se a sua instalação Comercial  vai até  1000 kWh: $preco");
    }

       if (tipo == "I"){
    if (kWh <= 1000){
      preco = kWh * 0.55;
      print("Preço a pagar se a sua instalação Industrial é acima de 5000 kWh: $preco");
    } else {
      preco = kWh * 0.50;
      print("Preço a pagar se a sua instalação Industrial  vai até  5000 kWh: $preco");
    }
  }
  }
}