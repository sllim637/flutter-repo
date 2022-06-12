import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
        primarySwatch: Colors.deepOrange,
      ),
      home: soir()
    );
  }
  
}
class soir extends StatefulWidget {

  @override
  State<soir> createState() => _soirState();
}

class _soirState extends State<soir> {
  String info = "bienvenue minsieur/madame";
  bool val1 = false;
  bool val2 = false;
  double val3  = 0.0;
  void onChangeVal1(bool s){
    setState((){
      val1=s;
    });
  }
  void onChangeVal2(bool t){
    setState((){
      val2=t;
    });
  }
  void onChangeVal3(double d){
    setState((){
      val3=d;
    });
  }

  initState(){
    super.initState();
    info = "bienvenue sur le tuo";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
      ),
      // ignore: deprecated_member_use
      body: Center(
        child: Column(
          children:<Widget> [

            SwitchListTile(value: val2, onChanged: onChangeVal2, activeColor: Colors.green ,
              title: Text("valider interrupteur ")),
            Text("valider le curseur ${(val3*100).round()}"),
            Slider(value: val3, onChanged: onChangeVal3,)
          ],
        ),
      ),
    )
    ;
  }
}


