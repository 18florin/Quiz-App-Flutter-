import 'package:flutter/material.dart';

class Raspuns extends StatelessWidget {
  final VoidCallback apasat;
  final String raspText;
  const Raspuns(this.apasat, this.raspText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: apasat,
        child: Text(raspText),
      ),
    );
  }
}