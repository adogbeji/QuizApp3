import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity, 
            child:
          Text('Questionnaire App!', style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}