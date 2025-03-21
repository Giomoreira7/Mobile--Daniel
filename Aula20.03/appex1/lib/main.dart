import 'package:flutter/material.dart';

void main() {
  runApp(TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Atividade 01"),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Variavel mensagem
  String msg = "Aula Daniel";

  // Função para exibir mensagem no app
  _exibemsg() {
    setState(() {
      msg = "Mobile";
    });
  }

  // Função para limpar mensagem
  _limpar() {
    setState(() {
      msg = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox for spacing
        SizedBox(
          height: 20,
        ),
        
        // Stack to display colored containers with text in the center
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 2000,
              height: 200,
              color: const Color.fromARGB(255, 6, 155, 192),
            ),
            Container(
              alignment: Alignment.center,
              width: 1000,
              height: 100,
              color:const Color.fromARGB(255, 121, 182, 197),
              child: Text(
                "$msg",
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),

        // SizedBox for spacing
        SizedBox(
          height: 20,
        ),

        // ListView with ListTiles
        

        // Row with buttons and icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: _exibemsg,
              child: Text("Mensagem", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 2, 123, 142)

              ),),
            ),
            TextButton(
              onPressed: _limpar,
              child: Text("Limpar", style: TextStyle(
                fontSize: 20,color: const Color.fromARGB(255, 2, 123, 142)
              ),),
            ),

        
          ],
        ),
      ],
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
