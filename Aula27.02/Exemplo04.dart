/*
Criar uma classe usuario com dois atributos:
email e senha e criar a autenticação do usuário
*/

class Usuario{
  String? usuario;
  String? senha;
   
   void autentica(){
    String usuario = "GiovannaMoreira";
    String senha = "ads2710";

     if(this.usuario == usuario && this.senha==senha){
      print("Login correto");
    }
     else{
      print("Login Incorreto");
    }
   }
}

void main(){
  Usuario cliente = Usuario();
  cliente.usuario = "GiovannaMoreira";
  cliente.senha="ads271";
  cliente.autentica();
}
