import 'package:flutter/material.dart';

main () => runApp(PerguntaAPP());

class PerguntaAPP extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: null, 
              child: Text("Resposta 1")
              ),
              ElevatedButton(
              onPressed: null, 
              child: Text("Resposta 2")
              ),
              ElevatedButton(
              onPressed: null, 
              child: Text("Resposta 3")
              ),     
          ],)
      ),
    );
  }
}