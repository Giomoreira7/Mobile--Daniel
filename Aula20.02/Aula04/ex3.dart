// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

  print("Insira o valor do salário bruto: ");
  
  double salarioBruto = double.parse(stdin.readLineSync()!);
  double salarioLiquido = calcularSalarioLiquido(salarioBruto);

  print("Valor do salário líquido: $salarioLiquido");
}

double calcularSalarioLiquido(salarioBruto){
  double imposto = salarioBruto * 0.10; 
  double bonificacao = salarioBruto * 0.20;

  double salarioLiquido = salarioBruto - imposto + bonificacao;

  print(" O salario com impostos e bonificação : $salarioLiquido");
}
