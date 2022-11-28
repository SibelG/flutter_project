//@dart=2.9

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage("assets/images/cup.jpg"),
                ),
                Text("CoffeMac",
                    style: TextStyle(
                        fontSize: 45,
                        fontFamily: "Lobster",
                        color: Colors.brown[900])),
                Text("Bir Fincan Uzağınızda",
                    style: GoogleFonts.pacifico(
                        fontSize: 26, color: Colors.white)),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  //padding: EdgeInsets.all(10.0),
                  color:Colors.brown[900],
                  child: ListTile(leading:  Icon(Icons.email,
                      size: 20,
                      color: Colors.white
                  ),
                    title:Text(
                      "siparis@mac_coffe.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0),
                    ), ),
                ),
                SizedBox(height: 10.0),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  //padding: EdgeInsets.all(10.0),
                  color:Colors.brown[900],
                  child: ListTile(
                    leading:Icon(Icons.phone,
                        size: 20,
                        color: Colors.white
                    ),
                    title:Text(
                      "+095 213 44 44",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}*/
