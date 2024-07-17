import 'package:flutter/material.dart';

main () => runApp(PerguntaAPP());

class _PerguntaAPPState extends State<PerguntaAPP>{
  var _perguntaSelecionada = 0;
  void responder (){
    setState(() {
    _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

   @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual a sua cor favorita?",
      "Qual é o seu animal favorito?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder, 
              child: Text('Resposta 1')
              ),
              ElevatedButton(
              onPressed: responder, 
              child: Text('Resposta 2')
              ),
              ElevatedButton(
              onPressed: responder, 
              child: Text('Resposta 3')
              ),     
          ],)
      ),
    );
  }
}

class PerguntaAPP extends StatefulWidget{

  _PerguntaAPPState createState() {
    return _PerguntaAPPState();
  }
 
}