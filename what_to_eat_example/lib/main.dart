import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: Text(
            "What to Eat?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: EatPage(),
      ),
    );
  }
}

class EatPage extends StatefulWidget {
  @override
  State<EatPage> createState() => _EatPageState();
}

class _EatPageState extends State<EatPage> {
  int soupNo = 1;

  int eatNo = 2;

  int dessertNo = 3;

  List<String> soupName= [
    'Mercimek',
    'Tarhana',
    'TavukSuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'

  ];

  List<String> eatName= [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Kofte',
    'Izgara Balık'

  ];
  List<String> dessertName= [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'

  ];

  void changeEats(){
    setState((){
      soupNo = Random().nextInt(5)+1;
      eatNo =Random().nextInt(5)+1;
      dessertNo = Random().nextInt(5)+1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
                color: Colors.yellow,
                highlightColor: Colors.green,
                onPressed: changeEats,
                child: Image.asset('assets/soup_$soupNo.jpg')),
          )),
          Text(soupName[soupNo-1],style: TextStyle(fontSize: 20),),
          Divider(height: 5,
    color:Colors.black),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
                color: Colors.yellow,
                highlightColor: Colors.green,
                onPressed: changeEats,
                child: Image.asset('assets/yemek_$eatNo.jpg')),
          )),
          Text(eatName[eatNo-1],style: TextStyle(fontSize: 20),),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
                color: Colors.yellow,
                highlightColor: Colors.green,
                onPressed: changeEats,
                child: Image.asset('assets/tatli_$dessertNo.jpg')),
          )),
          Text(dessertName[dessertNo-1],style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
