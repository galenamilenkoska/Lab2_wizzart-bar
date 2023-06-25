import 'package:flutter/material.dart';

import './models/question.dart';
import './widget/pizza_answer.dart';
import './widget/pizza_question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  var questions = [
    Question(
      questionText: "Select clothing type",
      answers: [
        'Pants',
        'Shoes',
        'Shirts',
      ],
    ),
    Question(
      questionText: "Select shirt",
      answers: [
        'T-shirt',
        'Polo shirt',
        'Flannel',
        'Tunic',
      ],
    ),
    Question(
      questionText: "Select shoes",
      answers: [
        'boots',
        'sneakers',
      ],
    ),
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Column(
          children: [
            if (_questionIndex < questions.length)
              PizzaQuestion(questions[_questionIndex].questionText),
            if (_questionIndex < questions.length)
              Column(
                children: [
                  for (var answer in questions[_questionIndex].answers)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: PizzaAnswer(_iWasTapped, answer),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
