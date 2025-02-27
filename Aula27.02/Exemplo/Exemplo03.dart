/*
Classe pessoa com atributos privados que garantem segurança para
proteger os dados
*/


class Pessoa{
  String? _nome; 
  void setNome(String nome){
   _nome = nome;
  }
  String? getNome(){
     return _nome;
  }
}

class Aluno{
  String? nome;
   getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome = "Giovanna";
  print("Nome do cliente: ${cliente._nome}");
  print("Nome do cliente ${cliente.getNome()} ");
  Aluno Giovanna = Aluno();
  Giovanna.nome = "Giovanna";
  print("${Giovanna.nome}");
}