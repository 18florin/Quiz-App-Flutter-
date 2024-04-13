import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scorObtinut;
  final VoidCallback resetIntrebari;
  String get frazaSfarsit {
    String textSfarsit;
    if (scorObtinut <= 8) {
      textSfarsit = 'Mai incearca';
    } else {
      textSfarsit = 'E binisor';
    }
    return textSfarsit;
  }

  const Result(this.scorObtinut, this.resetIntrebari, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            frazaSfarsit,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: resetIntrebari, child: const Text('Restart')),
        ],
      ),
    );
  }
}
