import 'package:flutter/material.dart';

class PizzaQuestion extends StatelessWidget {
  String _questionContent;
  PizzaQuestion(this._questionContent);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        _questionContent,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    );
  }
}
