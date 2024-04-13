import 'package:flutter/material.dart';

class Intrebare extends StatelessWidget {
  final String intrebari;
  const Intrebare(this.intrebari,{super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        intrebari,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}