// importa a biblioteca dart io

import 'dart:io';

// funçao principal do codigo

void main (){

  print("Insira o nome do aluno  : ");
  String nome = stdin.readLineSync()!;

  print("Insira a primeira nota do aluno : ");
  double notaAvaliação01 = double.parse(stdin.readLineSync()!);

  print(" Insira a segunda nota do aluno : ");
  double notaAvaliação02 = double.parse(stdin.readLineSync()!);


  double mediaEscolar = (notaAvaliação01 + notaAvaliação02 )/2;

  if (mediaEscolar >= 7 ){
    print("$nome aporvado  com media :$mediaEscolar");
  }
  else if (mediaEscolar < 7 && mediaEscolar >= 4){
    print ("$nome em recuperação com media :$mediaEscolar Procure seu professor !");
  }
  else if (mediaEscolar <4 ){
    print("$nome reprovado com media :$mediaEscolar");
  }
}
