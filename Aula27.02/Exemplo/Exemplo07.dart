/*
Construtor com this:
Fruta(this.sabor, this.nome, this.cor, this.peso, this.diasDesdeColheita);
O uso de this associa os parâmetros do construtor diretamente aos atributos da
classe, reduzindo a necessidade de inicializá-los manualmente.
Atributo Opcional:
O atributo isMadura é marcado como nulo opcional (bool?), o que significa que ele
pode ou não ter um valor atribuído.
Métodos:
A classe possui um método verificaMaturidade que realiza uma ação com base nos
valores dos atributos.
*/

class Fruta{
  String sabor;
  String nome;
  String cor;
  double peso;
  int diasDesdecolheita;
  bool isMadura = false;
  
  
  Fruta(this.sabor,this.nome,this.cor,this.peso,this.diasDesdecolheita);


  void verificarMaturidade(int diasParaMaturidade){
  if(diasDesdecolheita>= diasParaMaturidade){
    print("A $nome esta madura");
    isMadura = true;
  }
  else{
    print("A $nome nao esta madura");
    isMadura=false;
  }
}
}



void main(){
  Fruta manga = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  manga.verificarMaturidade(6);
}
