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
        home: soir());
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
  double val3 = 0.0;
  String value = "";

  void submit(String a){
    setState((){
      value = "message envoyé $a";
    });
  }
  void afficher(String a){
    setState((){
      value = "bienvenue $a";
    });
  }
  @override
  initState() {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bienvenue  $value" , style: TextStyle(fontSize: 20 , color: Colors.orange), textAlign: TextAlign.center,),
            TextField(
              decoration: InputDecoration(
                  labelText: "Nom",
                  hintText: "entrer votre nom",
                  icon: Icon(
                    Icons.person,
                    color: Colors.orange,
                    size: 30,
                  )),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Telephone",
                  hintText: "entrer votre numero de telephone",
                  icon: Icon(
                    Icons.phone,
                    color: Colors.orange,
                    size: 30,
                  )),
              keyboardType: TextInputType.number,
              autocorrect: true,
              autofocus: true,
              onChanged: afficher ,
               onSubmitted: submit ,
            )
          ],
        ),
      ),
    );
  }
}
