import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Container'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 200,
            width: 750,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            color: Colors.blueGrey,
            child: Text('Shubham Dhopat',textAlign: TextAlign.center,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 200,
            width: 750,
            color: Colors.amber,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),

            child: Image.asset('assets/img/download.jpg'),
          ),
          Container(
            height: 200,
            width: 750,
            color: Colors.deepOrangeAccent,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: Text('TEIT-1    21',textAlign: TextAlign.center,style: TextStyle(fontSize: 32,fontStyle: FontStyle.italic)),
          )
        ],
      ),
    );
  }
}
