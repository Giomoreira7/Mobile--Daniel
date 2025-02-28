/* Crie uma classe denominada “Máquinas” com os seguintes atributos:
Nome da máquina
Quantidade de eixos
Rotações por minuto
Consumo de energia elétrica
Essa classe deve ser a mãe de outras classes.
Criar classe denominada furadeira herdando o nome da máquina, rotações por minuto,
consumo de energia elétrica.
Criar métodos para ligar, desligar a máquina e um método para ajustar a velocidade de
rotação da máquina. */


class Maquinas {
  String nomeDaMaquina;
  int quantidadeDeEixos;
  int rotacoesPorMinuto;
  double consumoDeEnergia;

  
  Maquinas(this.nomeDaMaquina, this.quantidadeDeEixos, this.rotacoesPorMinuto, this.consumoDeEnergia);

  
  void ligar() {
    print("A máquina $nomeDaMaquina foi ligada.");
  }

 
  void desligar() {
    print("A máquina $nomeDaMaquina foi desligada.");
  }

  
  void ajustarVelocidade(int novaRotacao) {
    rotacoesPorMinuto = novaRotacao;
    print("A velocidade da máquina $nomeDaMaquina foi ajustada para $rotacoesPorMinuto rotações por minuto.");
  }
}


class Furadeira extends Maquinas {
  Furadeira(String nomeDaMaquina, int quantidadeDeEixos, int rotacoesPorMinuto, double consumoDeEnergia)
      : super(nomeDaMaquina, quantidadeDeEixos, rotacoesPorMinuto, consumoDeEnergia);

  
  void furar() {
    print("A furadeira $nomeDaMaquina está furando.");
  }
}

void main() {
  
  Furadeira furadeira = Furadeira("Furadeira Elétrica", 2, 1200, 0.5);
  
  furadeira.ligar();
  furadeira.furar();
  furadeira.ajustarVelocidade(1500);
  furadeira.desligar();
}
