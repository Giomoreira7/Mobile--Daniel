import 'package:flutter/material.dart';

void main() {
  runApp(F1PilotsApp());
}

class F1PilotsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PilotsScreen(),
    );
  }
}

class PilotsScreen extends StatefulWidget {
  @override
  _PilotsScreenState createState() => _PilotsScreenState();
}

class _PilotsScreenState extends State<PilotsScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController titlesController = TextEditingController();
  final TextEditingController winsController = TextEditingController();
  final TextEditingController podiumsController = TextEditingController();
  final TextEditingController racesController = TextEditingController();
  final TextEditingController pointsController = TextEditingController();

  List<Map<String, String>> pilots = [];

  void addPilot() {
    setState(() {
      pilots.add({
        'Nome': nameController.text,
        'Idade': ageController.text,
        'Títulos': titlesController.text,
        'Times': winsController.text,
        'Nacionalidade': podiumsController.text,
        'Posição': racesController.text,
        'Lesões': pointsController.text,
      });

      nameController.clear();
      ageController.clear();
      titlesController.clear();
      winsController.clear();
      podiumsController.clear();
      racesController.clear();
      pointsController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogadores"),
        backgroundColor: const Color.fromARGB(255, 255, 11, 145),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: "Nome")),
            TextField(controller: ageController, decoration: InputDecoration(labelText: "Idade"), keyboardType: TextInputType.number),
            TextField(controller: titlesController, decoration: InputDecoration(labelText: "Títulos"), keyboardType: TextInputType.number),
            TextField(controller: winsController, decoration: InputDecoration(labelText: "Times"), keyboardType: TextInputType.number),
            TextField(controller: podiumsController, decoration: InputDecoration(labelText: "Nacionalidade"), keyboardType: TextInputType.number),
            TextField(controller: racesController, decoration: InputDecoration(labelText: "Posição"), keyboardType: TextInputType.number),
            TextField(controller: pointsController, decoration: InputDecoration(labelText: "Lesões"), keyboardType: TextInputType.number),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addPilot,
              child: Text("Adicionar Jogador"),
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 173, 0, 165), foregroundColor: Colors.white),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: pilots.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    child: ListTile(
                      title: Text(
                        pilots[index]['Nome']!,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Idade: ${pilots[index]['Idade']}\n"
                        "Títulos: ${pilots[index]['Títulos']}\n"
                        "Times: ${pilots[index]['Times']}\n"
                        "Nacionalidade: ${pilots[index]['Nacionalidade']}\n"
                        "Posição: ${pilots[index]['Posição']}\n"
                        "Lesões: ${pilots[index]['Lesões']}",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}