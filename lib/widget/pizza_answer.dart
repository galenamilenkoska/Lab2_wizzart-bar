import 'package:flutter/material.dart';

class PizzaAnswer extends StatelessWidget {
  final String _answerText;
  final Function _tapped;

  PizzaAnswer(
      @required this._tapped,
      @required this._answerText,
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Set the button color using the provided parameter
      ),
      child: Text(
        _answerText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ),
      onPressed: _tapped, // Fix the function reference here

    );
  }
}
