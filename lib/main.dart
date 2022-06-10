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
  int val1 =0;
  int val2 = 0;
  var info = "hello slim";
  changeVal1(int s){
    setState((){
      val1=s;
    });
  }
  changeVal2(int t){
    setState((){
      val2=t;
    });
  }
  Widget radio(){
    List <Widget> radio_button = [];
    for(int i= 0 ;i<4 ; i++){
      radio_button.add(Radio(value: i, groupValue: val1, onChanged: changeVal1(i)));
    }
      Column column = Column(children: radio_button,);
    return column ;

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
            radio(),
            Text("bienvenur chez slim hammami" , style: TextStyle(fontSize: 25 , color: Colors.deepOrange),)
          ],
        ),
      ),
    )
    ;
  }
}


