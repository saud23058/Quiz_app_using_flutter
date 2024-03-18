import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex=0;
  @override
  Widget build(BuildContext context) {
    void answerQuestions(){
      setState((){
        questionIndex +=1;
      });
    }

    var questions=[
      "'What's your favourite color",
      "'What's your favourite Animal",
    ];
    return  MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('First App'),),
      body:  Column(
        children: [
           Text(questions[questionIndex]),
          ElevatedButton(
              onPressed: answerQuestions,
              child: const Text('Answer no 1')),
           ElevatedButton(
              onPressed: answerQuestions,
              child: const Text('Answer no 2')),
           ElevatedButton(
              onPressed: answerQuestions,
              child: const Text('Answer no 3'))
        ],
      )
    ),);
  }
}