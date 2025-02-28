/* Crie uma classe “Filha” com o tipo de animal pássaro, cachorro, tigre, peixe e o atributo:
peso, métodos acordou, dormiu.*/

class Animal {
  String nome;
  int idade;
  String cor;
  String raca;
  double peso;

  
  Animal(this.nome, this.idade, this.cor, this.raca, this.peso);

  
  void acordou() {
    print("O animal $nome acordou.");
  }

  
  void dormiu() {
    print("O animal $nome dormiu.");
  }

 
  void mostrarPeso() {
    print("O peso do animal $nome é $peso kg.");
  }
}


class Passaro extends Animal {
  Passaro(String nome, int idade, String cor, String raca, double peso)
      : super(nome, idade, cor, raca, peso);

  
  void comportamentoPassaro() {
    print("O pássaro $nome acordou e começou a cantar.");
  }
}


class Cachorro extends Animal {
  Cachorro(String nome, int idade, String cor, String raca, double peso)
      : super(nome, idade, cor, raca, peso);

  
  void comportamentoCachorro() {
    print("O cachorro $nome acordou e começou a latir.");
  }
}


class Tigre extends Animal {
  Tigre(String nome, int idade, String cor, String raca, double peso)
      : super(nome, idade, cor, raca, peso);

  
  void comportamentoTigre() {
    print("O tigre $nome acordou e começou a rugir.");
  }
}


class Peixe extends Animal {
  Peixe(String nome, int idade, String cor, String raca, double peso)
      : super(nome, idade, cor, raca, peso);

  
  void comportamentoPeixe() {
    print("O peixe $nome acordou e começou a nadar.");
  }
}

void main() {
  
  Passaro passaro = Passaro("Arara", 3, "Azul", "Arara", 1.5);
  Cachorro cachorro = Cachorro("Britiney", 4, "Preto", "Labrador", 25.0);
  Tigre tigre = Tigre("Garro", 6, "branco", "Bengala", 220.0);
  Peixe peixe = Peixe("Dory", 1, "Azul", "patela", 0.5);
  
  passaro.acordou();
  passaro.mostrarPeso();
  passaro.comportamentoPassaro();
  passaro.dormiu();

  cachorro.acordou();
  cachorro.mostrarPeso();
  cachorro.comportamentoCachorro();
  cachorro.dormiu();

  tigre.acordou();
  tigre.mostrarPeso();
  tigre.comportamentoTigre();
  tigre.dormiu();

  peixe.acordou();
  peixe.mostrarPeso();
  peixe.comportamentoPeixe();
  peixe.dormiu();
}