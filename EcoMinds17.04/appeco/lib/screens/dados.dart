import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String baseUrl = 'http://10.0.2.2:8000'; 
class SensorData {
  final String title;
  final String value;
  final String status;
  final Color statusColor;
  final String imagePath;
// Cria o construtor
  SensorData(
      {required this.title,
      required this.value,
      required this.status,
      required this.statusColor,
      required this.imagePath});
}
class DadosScreen extends StatefulWidget {
  const DadosScreen({super.key});

  @override
  State<DadosScreen> createState() => _DadosScreenState();
}

class _DadosScreenState extends State<DadosScreen> {

 // Cria lista com os sensores
  final List<SensorData> sensores = [
    // primeiro sensor
    SensorData(
        title: 'Umidade do solo',
        value: '80%',
        status: 'Bom',
        statusColor: const Color(0xFF025A40),
        imagePath: 'images/solo2.jpg'),

    SensorData(
        title: 'Temperatura',
        value: '25 ºC',
        status: 'Bom',
        statusColor:  const Color(0xFF025A40),
        imagePath: 'images/temp2.jpg'),
    SensorData(
        title: 'Luminosidade',
        value: '80%',
        status: 'Bom',
        statusColor:  const Color(0xFF025A40),
        imagePath: 'images/lumi2.jpg'),

    SensorData(
        title: 'Niveis de ph',
        value: '2',
        status: 'Ruim',
        statusColor: Colors.red,
        imagePath: 'images/ph2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF025A40),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color:  const Color(0xFF025A40),
          ),
        ),
        title: Text(
          'Coleta de Dados',
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      // Widget novo Listview.builder
      body: ListView.builder(
          // itemCount é para verificar o tamanho da lista dos elementos
          itemCount: sensores.length,
          // context esta relacionado a tela e o index a quantidade de elementos
          itemBuilder: (context, index) {
            final sensor = sensores[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>DetalheSensorScreen(sensor: sensor)));
              },
              child: SensorCard(sensor: sensor),
            );
            
            
            
          }),
      );
    
  }
}

// cria a classe sensor card

class SensorCard extends StatelessWidget {
  final SensorData sensor;
  SensorCard({super.key, required this.sensor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              sensor.imagePath,
              height: 200,
              fit: BoxFit.cover,
            ),
          
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  sensor.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      sensor.value,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        sensor.status,
                        style: TextStyle(
                            color: sensor.statusColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


// Tela de Detalhes do Sensor
class DetalheSensorScreen extends StatefulWidget {
  final SensorData sensor;
  
  const DetalheSensorScreen({super.key, required this.sensor});

  @override
  State<DetalheSensorScreen> createState() => _DetalheSensorScreenState();
}

class _DetalheSensorScreenState extends State<DetalheSensorScreen> {
 Future<void> _leitura() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:8000/dados'));
    print(response.body);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF5EE),
      appBar: AppBar(
        title: Text(widget.sensor.title),
        backgroundColor: const Color(0xFF025A40),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.sensor.imagePath,
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Valor: ${widget.sensor.value}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Status: ${widget.sensor.status}",
              style: TextStyle(
                fontSize: 16,
                color: widget.sensor.statusColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}