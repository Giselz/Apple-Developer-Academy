import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Teste Técnico';
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 186, 209, 223),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  @override 
  _HomePageState createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {

final originalList = List.generate(20, ((index) => index.toInt()));
originalList.shuffle();

    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 8.0),
                child: Text('ID dos alunos de cada dupla: ', style: TextStyle(fontSize: 40.0), textAlign: TextAlign.center,),
              ),
              Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 80.0),
            child: Text('$originalList', style: const TextStyle(fontSize: 80.0)),
          ),
            ],
          ),
        )
        ),
      ),
    );
  }
  }