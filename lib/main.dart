import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _contor = 0;
  var _totalScore = 0;
  void _restartQuiz() {
    setState(() {
      _contor = 0;
      _totalScore = 0;
    });
  }

  void _crestere(int score) {
    _totalScore += score;
    setState(() {
      _contor = _contor + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _lista = const [
      {
        'textIntrebari': 'Cati tepi are ariciul?',
        'textRaspuns': [
          {'text': '100 tepi', 'score': 5},
          {'text': '200 tepi', 'score': 7},
          {'text': 'multi tepi', 'score': 10},
          {'text': '1000 tepi', 'score': 2}
        ],
      },
      {
        'textIntrebari': 'Cat doarme ariciul?',
        'textRaspuns': [
          {'text': '3 ore', 'score': 6},
          {'text': '6 ore', 'score': 8},
          {'text': 'toata noaptea', 'score': 10},
          {'text': 'toata noaptea', 'score': 2}
        ],
      },
      {
        'textIntrebari': 'Cum il cheama pe arici?',
        'textRaspuns': [
          {'text': 'Boy', 'score': 7},
          {'text': 'Spike', 'score': 5},
          {'text': 'Speedy', 'score': 10},
          {'text': 'Sudy', 'score': 2}
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Intrebari arici'),
          centerTitle: true,
        ),
        body: _contor < _lista.length
            ? Quiz(
                crestere: _crestere,
                contor: _contor,
                lista: _lista,
              )
            : Result(_totalScore, _restartQuiz),
      ),
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
    );
  }
}
