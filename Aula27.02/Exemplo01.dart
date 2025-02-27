/*
 Cria uma classe chamada carro, essa classe possui dois atributos
que é a marca e o ano e um método chamado acelerar que irá escrever
no terminal o carro está acelerando.
 */

class Casa{
  // String cor cria o atributo cor da casa

  String? cor;
  int? qtde_p;

  // Cria o metodo abrir porta

  void abrirporta(){
    print("A porta esta aberta");
  }
}

void main(){
  // instancio o objeto chamado minhaCasa
  Casa minhaCasa = Casa();
  minhaCasa.cor="Azul";
  minhaCasa.qtde_p =2;
  minhaCasa.abrirporta();
  print("Cor da casa ${minhaCasa.cor}");
  print("Quantidade de portas ${minhaCasa.qtde_p}");

}