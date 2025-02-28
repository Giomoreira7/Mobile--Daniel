/* 1. Crie uma classe mãe chamada “Animal” com os atributos: String nome, int idade, String cor, String raça.
*/

class Animal{
  String? nome;
  int? idade;
  String? cor;
  String? raca;

Animal(this.nome, this.idade, this.cor, this.raca);

  void acordou(){
    print("O animal $nome acordou");
  }

  void dormiu(){
    print("O animal $nome dormiu");
  }
}