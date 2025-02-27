 /*Cria uma classe denominada animal com o método dormir.
 Cria uma classe denominada cachorro herdando o método dormir da
classe animal.
 */

class Animal{
  String? nome;
  int? idade;
  void dormir(){
    print("O animal ${nome} esta dormindo");
  }
}


class Cachorro extends Animal{
  void latir(){
    print("O animal ${nome} esta latindo");
  }
}


class Tigre extends Animal{
  String? cor;
  void atacar(){
    print("O animal Tigre $nome atacou");
  }
}

void main(){
  Cachorro Rocky = Cachorro();
  Rocky.nome="britney";
  Rocky.idade =2;
  Rocky.latir();
  Rocky.dormir();

  Tigre Garro = Tigre();
  Garro.cor="Branco";
  Garro.nome = "Garro";
  Garro.idade = 30;
  Garro.atacar();
}
