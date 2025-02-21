// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

  print("Insira um valor em reais (R$) para converter: ");

  double valorReais = double.parse(stdin.readLineSync()!);

  double conversao = 0;
  double valorEuro = 7.00;
  double valorDolar = 6.56;
  double valorFranco = 4.35;

  print("Selecione uma moeda para realizar a conversão:");
  print("1 - Euro (€)");
  print("2 - Dólar Americano (US$)");
  print("3 - Franco Suíço (CHF)");

  int escolha = int.parse(stdin.readLineSync()!);

  
  switch (escolha) {
    case 1:
      conversao = valorReais / valorEuro;
      print("O valor de R\$ $valorReais em Euro (€) é €$conversao");
      break;

    case 2:
      conversao = valorReais / valorDolar;
      print("O valor de R\$ $valorReais em Dólar (US\$) é US\$ $conversao");
      break;

    case 3:
      conversao = valorReais / valorFranco;
      print("O valor de R\$ $valorReais em Franco Suíço (CHF) é CHF $conversao");
      break;

    default:
      print("Opção inválida.");
  }
}