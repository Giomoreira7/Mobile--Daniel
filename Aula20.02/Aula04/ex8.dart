// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

  double valorDesconto = 0;
  double valorTotal = 0; 
  double valorEtanol = 1.70;
  double valorDiesel = 2.00;
  double valorGasolina = 4.50;


  print("Insira a quantidade de litros comprada: ");
  double litros = double.parse(stdin.readLineSync()!);

  print("Informe o tipo de combustível:");
  print("E - Etanol");
  print("D - Diesel");
  print("G - Gasolina");

  String escolha = stdin.readLineSync()!.toUpperCase();



    if (tipo == "E") {
    if (litros >= 15) {
      desconto = valorEtanol * litros * 0.04; 
      total = (valorEtanol * litros) - desconto;
    } else {
      desconto = valorEtanol * litros * 0.03; 
      total = (valorEtanol * litros) - desconto;
    }
  }

  
  if (tipo == "D") {
    if (litros >= 15) {
      desconto = valorDiesel * litros * 0.05; 
      total = (valorDiesel * litros) - desconto;
    } else {
      desconto = valorDiesel * litros * 0.03; 
      total = (valorDiesel * litros) - desconto;
    }
  }

  /
  if (tipo == "G") {
    if (litros >= 20) {
      desconto = valorGasolina * litros * 0.03; 
      total = (valorGasolina * litros) - desconto;
    } else {
      total = valorGasolina * litros; 
    }
  }
 print("Valor a ser pago: R\$ $total");
}
