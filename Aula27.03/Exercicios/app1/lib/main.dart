// Importação do pacote do Flutter necessário para a criação do app.
import 'package:flutter/material.dart';

// Função principal que executa o aplicativo Flutter.
void main() {
  runApp(MyApp());  // Inicia o app passando o widget MyApp.
}

// Classe MyApp, que é o widget principal do aplicativo.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // MaterialApp é o widget principal de um aplicativo Flutter com material design.
      home: AddressForm(),  // O widget principal que será exibido é o AddressForm.
    );
  }
}

// Classe AddressForm que é um StatefulWidget, ou seja, um widget que possui estado.
class AddressForm extends StatefulWidget {
  @override
  _AddressFormState createState() => _AddressFormState();  // Criação do estado do widget.
}

// Classe _AddressFormState que gerencia o estado do AddressForm.
class _AddressFormState extends State<AddressForm> {
  // Controladores para os campos de texto.
  final _enderecoController = TextEditingController();  // Controlador do campo Endereço.
  final _cidadeController = TextEditingController();  // Controlador do campo Cidade.
  final _numeroController = TextEditingController();  // Controlador do campo Número.

  // Função para exibir um diálogo com as informações inseridas.
  void _mostrarInformacoes() {
    // Coleta o texto dos campos usando os controladores.
    final endereco = _enderecoController.text;
    final cidade = _cidadeController.text;
    final numero = _numeroController.text;

    // Exibe um diálogo com os dados inseridos.
    showDialog(
      context: context,  // Contexto da árvore de widgets.
      builder: (context) {  // Função para construir o conteúdo do diálogo.
        return AlertDialog(  // Criação de um AlertDialog (caixa de diálogo).
          title: Text("Informações Inseridas"),  // Título do diálogo.
          content: Text(  // Conteúdo do diálogo, onde mostramos as informações inseridas.
            'Endereço: $endereco\nCidade: $cidade\nNúmero: $numero',
          ),
          actions: [  // Ações do diálogo, normalmente botões.
            TextButton(  // Botão de fechar.
              onPressed: () {
                Navigator.of(context).pop();  // Fecha o diálogo quando o botão é pressionado.
              },
              child: Text("Fechar"),  // Texto do botão.
            ),
          ],
        );
      },
    );
  }

  // Método build que cria a interface gráfica do widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Scaffold fornece a estrutura básica do layout do app.
      appBar: AppBar(  // Barra de título do aplicativo.
        title: Text('Formulário de Endereço'),  // Título exibido na appBar.
      ),
      body: Padding(  // Padding adiciona um espaçamento ao redor dos widgets.
        padding: const EdgeInsets.all(16.0),  // Definindo o padding de 16 pixels em todas as direções.
        child: Column(  // Widget de layout que organiza os widgets em uma coluna.
          crossAxisAlignment: CrossAxisAlignment.start,  // Alinha os widgets ao início da coluna.
          children: <Widget>[  // Lista de widgets filhos que vão dentro da coluna.
            // Primeiro campo de texto para o endereço.
            TextField(
              controller: _enderecoController,  // Controlador que gerencia o texto digitado.
              decoration: InputDecoration(  // Decoração do campo de texto.
                labelText: 'Endereço',  // Texto exibido como rótulo do campo.
                border: OutlineInputBorder(),  // Definindo uma borda ao redor do campo.
              ),
            ),
            SizedBox(height: 16),  // Espaçamento de 16 pixels entre os campos.
            // Segundo campo de texto para a cidade.
            TextField(
              controller: _cidadeController,  // Controlador para o campo cidade.
              decoration: InputDecoration(  // Decoração do campo de texto.
                labelText: 'Cidade',  // Texto exibido como rótulo do campo.
                border: OutlineInputBorder(),  // Borda ao redor do campo.
              ),
            ),
            SizedBox(height: 16),  // Espaçamento de 16 pixels entre os campos.
            // Terceiro campo de texto para o número.
            TextField(
              controller: _numeroController,  // Controlador para o campo número.
              keyboardType: TextInputType.number,  // Definindo o tipo de teclado como numérico.
              decoration: InputDecoration(  // Decoração do campo de texto.
                labelText: 'Número',  // Texto exibido como rótulo do campo.
                border: OutlineInputBorder(),  // Borda ao redor do campo.
              ),
            ),
            SizedBox(height: 16),  // Espaçamento de 16 pixels entre os campos.
            // Botão que, ao ser pressionado, chama a função para mostrar as informações.
            ElevatedButton(
              onPressed: _mostrarInformacoes,  // Chama a função _mostrarInformacoes ao pressionar.
              child: Text('Mostrar Informações'),  // Texto do botão.
            ),
          ],
        ),
      ),
    );
  }
}