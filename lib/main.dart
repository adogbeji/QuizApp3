import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// For Next Time: Convert StatelessWidget --> StatefulWidget!

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var indexValue = 3;

  void clickButton() {
    indexValue -= 1;
    print(indexValue);
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
            child:
          Text('Questionnaire App!', style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(7),
              child:
            Text(questions[indexValue], style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
            ),
            ElevatedButton(
              child: Text('Register'),
              onPressed: clickButton,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: clickButton,
            ),
            ElevatedButton(
              child: Text('Contact'),
              onPressed: clickButton,
            ),
          ],
        ),
      ),
    );
  }
}