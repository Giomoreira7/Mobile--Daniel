class Animal{
  String nome;
  int idade;

  // construtor 
  Animal(this.nome,this.idade);
  void dormir(){
    print("O animal ${nome} esta dormindo");
  }
}



class Cachorro extends Animal{
  Cachorro(nome,idade):super(nome,idade);
  void latir(){
    print("O animal ${nome} esta latindo");
  }
}


class Tigre extends Animal{
  Tigre(nome,idade,this.cor):super(nome,idade);
  String? cor;
  void atacar(){
    print("O animal Tigre $nome atacou");
  }
}


void main(){
  
  Cachorro britney = Cachorro("britney",2);
  britney.nome="britney";
  britney.idade =2;
  britney.latir();
  britney.dormir();
 
  Tigre Garro = Tigre("Garro",30,"Branco");
  Garro.cor="Branco";
  Garro.nome = "Garro";
  Garro.idade = 30;
  Garro.atacar();
}