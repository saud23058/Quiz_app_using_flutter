import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final VoidCallback reset;
  const Result({super.key, this.totalScore,required this.reset});

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = "Your are Innocent";
    } else if (totalScore >= 12) {
      resultText = "Your are likeable";
    } else {
      resultText = "Your are bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        )),
        ElevatedButton(onPressed:reset, child:const Text('Restart'))
      ],
    );
  }
}
