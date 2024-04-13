import 'package:flutter/material.dart';
import './intrebari.dart';
import './raspunsuri.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> lista;
  final int contor;
  final Function crestere;
  
  const Quiz({required this.lista,required this.crestere,required this.contor, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Intrebare(
          lista[contor]['textIntrebari'] as String,
        ),
        ...(lista[contor]['textRaspuns'] as List<Map<String, Object>>).map((rasp) {
          return Raspuns(() => crestere(rasp['score']), rasp['text'] as String);
        }).toList()
      ],
    );
  }
}