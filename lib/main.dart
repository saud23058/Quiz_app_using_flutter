import 'package:flutter/material.dart';
import 'package:flutter_class_one/quiz.dart';
import 'package:flutter_class_one/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 8},
        {'text': 'red', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favourite Animal',
      'answer': [
        {'text': 'lion', 'score': 10},
        {'text': 'tiger', 'score': 8},
        {'text': 'dog', 'score': 6}
      ]
    },
    {
      'questionText': 'Who\'s your favourite Teacher',
      'answer': [
        {'text': 'john', 'score': 8},
        {'text': 'ali', 'score': 10},
        {'text': 'black', 'score': 6}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore=0;

  void _reset(){
  setState(() {
    _questionIndex = 0;
    _totalScore=0;
  });
  }

  @override
  Widget build(BuildContext context) {
    void _answerQuestions(int score) {
      _totalScore += score;
      setState(() {
        _questionIndex += 1;
        print("hi");
      });
      if (_questionIndex < _questions.length) {} else {
        print("You did it");
      }
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child:  Text('Quiz'),),backgroundColor: Colors.teal,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestions,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            :  Result(totalScore: _totalScore,reset: _reset),
      ),
    );
  }
}
