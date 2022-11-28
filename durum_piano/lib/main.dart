

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piano',

      home: MyHomePage(),
    );
  }
}
class playerButton extends StatelessWidget {
  const playerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }


}



class MyHomePage extends StatefulWidget {


  _MyHomePageState createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {

  final audioPlayer=AudioCache();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () async {
                  await audioPlayer.play("bongo.wav");
                }, child: Container(
                color: Colors.blue,
              ),
              ),
            ),
            Expanded(child:FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                audioPlayer.load("bongo.wav");
              }, child: Container(
              color: Colors.red,
            ),
            ),
            ),
            Expanded(child:FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                audioPlayer.load("bip.wav");
              }, child: Container(
              color: Colors.green,
            ),
            ),
            ),

          ],
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: (){
                  audioPlayer.load("bongo.wav");
                }, child: Container(
                color: Colors.blue,
              ),
              ),
            ),
            Expanded(child:FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                audioPlayer.load("bongo.wav");
              }, child: Container(
              color: Colors.red,
            ),
            ),
            ),
            Expanded(child:FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                audioPlayer.load("bip.wav");
              }, child: Container(
              color: Colors.green,
            ),
            ),
            ),

          ],
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: (){
                  audioPlayer.load("bongo.wav");
                }, child: Container(
                color: Colors.blue,
              ),
              ),
            ),
            Expanded(child:FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                audioPlayer.load("bongo.wav");
              }, child: Container(
              color: Colors.red,
            ),
            ),
            ),
            Expanded(child:FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                audioPlayer.load("bip.wav");
              }, child: Container(
              color: Colors.green,
            ),
            ),
            ),

          ],
        ),
      ],
    ));
  }



}
