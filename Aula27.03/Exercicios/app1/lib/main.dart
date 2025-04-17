import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NotaAluno(),
  ));
}

class NotaAluno extends StatefulWidget {
  @override
  _NotaAlunoState createState() => _NotaAlunoState();
}

class _NotaAlunoState extends State<NotaAluno> {
  TextEditingController nomeController = TextEditingController();
  List<List<TextEditingController>> notaControllers = [];
  String resultado = "";

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 4; i++) {
      List<TextEditingController> grupo = [];
      for (int j = 0; j < 3; j++) {
        grupo.add(TextEditingController());
      }
      notaControllers.add(grupo);
    }
  }

  void calcularMedia() {
    String res = "Aluno: ${nomeController.text}\n";
    for (int i = 0; i < 4; i++) {
      double soma = 0;
      bool valido = true;
      for (int j = 0; j < 3; j++) {
        double nota = double.tryParse(notaControllers[i][j].text) ?? -1;
        if (nota < 0 || nota > 10) {
          valido = false;
          break;
        }
        soma += nota;
      }
      if (!valido) {
        setState(() {
          resultado = "Notas inválidas na disciplina ${i + 1}";
        });
        return;
      }
      double media = soma / 3;
      res += "Disciplina ${i + 1}: Média ${media.toStringAsFixed(2)} - ";
      res += media >= 6 ? "Aprovado" : "Reprovado";
      res += "\n";
    }
    setState(() {
      resultado = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Média do Aluno")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: nomeController,
                decoration: InputDecoration(labelText: "Nome do aluno"),
              ),
              ...List.generate(4, (i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Disciplina ${i + 1}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ...List.generate(3, (j) {
                      return TextField(
                        controller: notaControllers[i][j],
                        decoration: InputDecoration(labelText: "Nota ${j + 1}"),
                        keyboardType: TextInputType.number,
                      );
                    }),
                    SizedBox(height: 10),
                  ],
                );
              }),
              ElevatedButton(
                onPressed: calcularMedia,
                child: Text("Calcular"),
              ),
              SizedBox(height: 20),
              Text(resultado, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}