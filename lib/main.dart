import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Flutter Demo', home: soir());
  }
}

class soir extends StatefulWidget {
  @override
  State<soir> createState() => _soirState();
}

class _soirState extends State<soir> {
  String info = "bienvenue minsieur/madame";
  int value = 0;

  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    setState(() {
      value--;
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
        centerTitle: true,
        leading: const Icon(
          Icons.fastfood,
          size: 30,
        ),
        actions:  <Widget>[
          IconButton(
              onPressed: increment,
              icon: Icon(
                Icons.download,
                size: 30,
              )),
          // Icon(Icons.download , size: 30,),
          IconButton(
              onPressed: decrement,
              icon: Icon(
                Icons.upload,
                size: 30,
              )),
          Padding(padding: EdgeInsets.only(top: 40))
          // Icon(Icons.upload , size: 30,)
        ],
        backgroundColor: Colors.red,
        title: Text(info),
      ),
      // ignore: deprecated_member_use
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "the value is   $value",
              style: TextStyle(fontSize: 20, color: Colors.orange),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
