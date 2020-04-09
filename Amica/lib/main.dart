import 'package:Amica/Signup.dart';
import 'package:flutter/material.dart';
import './ContactScreen.dart';
//import './Signup.dart';


void main() {
  runApp(AmicaApp());
}

class AmicaApp extends StatefulWidget {
  @override
  _AmicaAppState createState() => _AmicaAppState();
}

class _AmicaAppState extends State<AmicaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amica App foobar',
      home: new ContactScreen(),

    );
  }
}

