import 'dart:async';

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
  int _id = 0;
  String dateValue = "";
  List<BottomNavigationBarItem> _item = [];

  Future select_date() async {
    DateTime? picker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030));
    if (picker != null) {
      setState(() {
        dateValue = picker.toString() ;
      });
    }
  }

  @override
  initState() {
    super.initState();
    _item = [];
    _item.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.local_hospital,
          color: Colors.purple,
        ),
        label: "hospital"));
    _item.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.restaurant_menu,
          color: Colors.purple,
        ),
        label: "restaurant"));
    _item.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.hotel,
          color: Colors.purple,
        ),
        label: "hotel"));
    info = "bienvenue sur le tuo";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
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
            Text("la date selectionné est : $dateValue" ),
            RaisedButton(onPressed: select_date,child: Text("selectionner une date"),)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _item,
        fixedColor: Colors.blue,
        currentIndex: _id,
        onTap: (int item) {
          _id = item;
        },
      ),
    );
  }
}
