import 'package:flutter/material.dart';

import './questions.dart';

void main() {
  runApp(MyApp());
}

// For Next Time: Convert list of questions --> list of maps with corresponding answers

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexValue = 3;

  void _clickButton() {
    setState(() {
      _indexValue -= 1;
      print(_indexValue);  
    });
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your name?',
      'How old are you?',
      'What job do you do?',
      'Where do you live?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            child: Text('Questionnaire App', style: TextStyle(fontSize: 26), textAlign: TextAlign.center,),
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_indexValue]),
            ElevatedButton(
              child: Text('Register'),
              onPressed: _clickButton,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: _clickButton,
            ),
            ElevatedButton(
              child: Text('Contact'),
              onPressed: _clickButton,
            ),
          ],
        ),
      ),
    );
  }
}