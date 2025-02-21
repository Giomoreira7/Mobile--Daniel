// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

  print("Insira a marca do 1° Carro  : ");
  String carroMarca1 = stdin.readLineSync()!;

  print("Insira o valor do 1° carro: ");
  double carroValor1 = double.parse(stdin.readLineSync()!);


  print("Insira a 2°  marca do Carro  : ");
  String carroMarca2 = stdin.readLineSync()!;

  print("Insira o valor do 2° carro: ");
  double carroValor2 = double.parse(stdin.readLineSync()!);

   print("Insira a 3°  marca do Carro  : ");
  String carroMarca2 = stdin.readLineSync()!;

  print("Insira o valor do 3° carro: ");
  double carroValor3 = double.parse(stdin.readLineSync()!);

  List<double> 
  listaMarca = [carroMarca1, carroMarca2, carroMarca3];

  List<double> 
  listaValor = [carroValor1, carroValor2, carroValor3];

  double maior = listaValor.reduce(max);
  double menor = listaValor.reduce(min);

  print("O carro mais caro  conforme os valores é :  $maior");
  
  print("O carro mais barato  conforme os valores é : $menor");

}