import 'package:flutter/material.dart';
import 'package:flutter_class_one/answer.dart';
import 'package:flutter_class_one/questions.dart';
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
      'answer': ['red', 'blue', 'green']
    },
    {
      'questionText': 'What\'s your favourite Animal',
      'answer': ['lion', 'tiger', 'dog']
    },
    {
      'questionText': 'Who\'s your favourite Teacher',
      'answer': ['john', 'ali', 'alice']
    }
  ];
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _answerQuestions() {
      setState(() {
        _questionIndex += 1;
      });
      if (_questionIndex < _questions.length) {
      } else {
        print("You did it");
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestions,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : const Result(),
      ),
    );
  }
}
