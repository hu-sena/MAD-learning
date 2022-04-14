import 'package:flutter/material.dart';
import 'questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // which class is stateful
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final inputController = TextEditingController(); // get user input
    var answer = ['Apple', 'Banana', 'Mango'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Column(children: <Widget>[
          Questions('Enter a number:'),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(controller: inputController),
          ),
          RaisedButton(
            child: Text('Show Answer'),
            onPressed: () {
              if (inputController.text == '1') {
                print(answer.elementAt(0));
              }
              if (inputController.text == '2') {
                print(answer.elementAt(1));
              }
              if (inputController.text == '3') {
                print(answer.elementAt(2));
              }
            },
          ),
        ]),
      ),
    );
  }
}
