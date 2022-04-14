import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(22),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
