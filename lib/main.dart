import 'package:flutter/material.dart';
import 'mainPage.dart';
import 'strings.dart';



void main() =>  runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return new MaterialApp(
      title: Strings.appTitle,
      theme: new ThemeData(primaryColor: Colors.blue), 
      home: new MainPage( title: Strings.appTitle,),
    );
  }
}
