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
  String value = "" ;
  void onShow(){
    setState((){
      value = new DateTime.now().toString();
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
      body: Column(
        children: <Widget> [
          Text("maintenant la date est : $value" ,style: TextStyle(fontSize: 50),)
        ],
      ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
              print("hello float action button");
              onShow();
          },
          backgroundColor: Colors.amber,
          label: Text("time "),
          icon: Icon(Icons.timer),

        ),
    )
    ;
  }
}


