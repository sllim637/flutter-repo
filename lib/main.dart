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
  var info = "slim hammami";
  var note =0 ;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  <Widget>[
          FlatButton(
              onPressed: (){
                debugPrint("----flat button is ok ---");
              },
              child: Text("flat button here "  ,style: TextStyle(fontSize: 20),),
          color: Colors.blue,
            focusColor: Colors.white,
          ),
          IconButton(
              onPressed: () {
            debugPrint("--- icon button is ok ---");
            setState((){
              note++;
            });

          },
              icon: Icon(Icons.accessible_forward_rounded, color: Colors.amber, size: 20,),
            tooltip: 'J\'aime'
          ),

          Text("votre point de vue est : $note")
        ],
      )
    )
    ;
  }
}


