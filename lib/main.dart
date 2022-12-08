import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const Exercicio02());
}

class Exercicio02 extends StatefulWidget {
  const Exercicio02({super.key});

  @override
  State<Exercicio02> createState() => _Exercicio02State();
}

class _Exercicio02State extends State<Exercicio02> {
  final n1Input = TextEditingController();
  final n2Input = TextEditingController();
  String somaString = "";

  //Função SOMAR
  _onSoma() {
    setState(() {
      double n1 = double.parse(n1Input.text);
      double n2 = double.parse(n2Input.text);
      double soma = n1 + n2;

      somaString = soma.toString();
    });
  }

  //Função SUBTRAIR
  _onSubtrair() {
    setState(() {
      double n1 = double.parse(n1Input.text);
      double n2 = double.parse(n2Input.text);
      double sub = n1 - n2;

      somaString = sub.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Pl02_Ex1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: n1Input,
              decoration: InputDecoration(
                labelText: 'Insina o 1º número',
              ),
            ),
            TextField(
              controller: n2Input,
              decoration: InputDecoration(
                labelText: 'Insina o 2º número',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _onSoma,
              child: Text('Somar'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _onSubtrair,
              child: Text('Subtrair'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$somaString',
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
