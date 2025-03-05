/* Crie uma classe denominada “Produtos” com os seguintes
parâmetros:
Nome do produto
Quantidade
Preço do produto
Tipo de comunicação
Consumo de energia elétrica
Essa classe de produtos deve ser a mãe de outras classes como
fritadeira, televisão, ar-condicionado.
As classes filhas devem possuir os seguintes métodos – Ligar,
desligar, ajuste de temperatura com passagem de parâmetros para
setpoint.*/

/*. Crie uma classe denominada “Produtos” com os seguintes
parâmetros:
Nome do produto
Quantidade
Preço do produto
Tipo de comunicação
Consumo de energia elétrica
Essa classe de produtos deve ser a mãe de outras classes como
fritadeira, televisão, ar-condicionado.
As classes filhas devem possuir os seguintes métodos – Ligar,
desligar, ajuste de temperatura com passagem de parâmetros para
setpoint. */


class Produto {
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  Produto(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  void ligar() {
    print('$nome foi ligada!');
  }

 
  void desligar() {
    print('$nome foi desligada!');
  }
}


class Fritadeira extends Produto {
  
  Fritadeira(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  
  void ajustarTemperatura(int temperatura) {
    print('$nome agora está a $temperatura °C.');
  }
}


class Televisao extends Produto {
  
  Televisao(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  
  void ajustarVolume(int volume) {
    print('$nome agora está com volume $volume.');
  }

  
  void mudarCanal(int canal) {
    print('$nome agora está no canal $canal.');
  }
}


class ArCondicionado extends Produto {
 
  ArCondicionado(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);


  void ajustarTemperatura(int temperatura) {
    print('$nome agora está com a temperatura ajustada para $temperatura °C.');
  }
}




void main() {
 
  Fritadeira fritadeira = Fritadeira('Fritadeira Elétrica', 5, 200.0, 'com fio', 1500.0);
  Televisao tv = Televisao('Televisão LED', 2, 1500.0, 'sem fio', 250.0);
  ArCondicionado arCondicionado = ArCondicionado('Ar Condicionado Split', 3, 3500.0, 'sem fio', 1500.0);

  fritadeira.ligar();
  fritadeira.ajustarTemperatura(180);  
  fritadeira.desligar();


  tv.ligar();
  tv.ajustarVolume(25); 
  tv.mudarCanal(10);  
  tv.desligar();


  arCondicionado.ligar();
  arCondicionado.ajustarTemperatura(22);  
  arCondicionado.desligar();
}