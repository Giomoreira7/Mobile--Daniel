import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UserInfoApp(),
  ));
}

class UserInfoApp extends StatefulWidget {
  @override
  _UserInfoAppState createState() => _UserInfoAppState();
}

class _UserInfoAppState extends State<UserInfoApp> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  
  String resultado = "";

  void exibirInformacoes() {
    setState(() {
      resultado = "Nome: ${nomeController.text}\n"
                  "Idade: ${idadeController.text}\n"
                  "Endereço: ${enderecoController.text}\n"
                  "Email: ${emailController.text}\n"
                  "Telefone: ${telefoneController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Usuário")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: idadeController,
              decoration: InputDecoration(labelText: "Idade"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: enderecoController,
              decoration: InputDecoration(labelText: "Endereço"),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: telefoneController,
              decoration: InputDecoration(labelText: "Telefone"),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: exibirInformacoes,
              child: Text("Exibir Informações"),
            ),
            SizedBox(height: 20),
            Text(
              resultado,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}