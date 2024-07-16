import 'package:flutter/material.dart';

main () => runApp(PerguntaAPP());

class PerguntaAPPState extends State<PerguntaAPP>{
  var perguntaSelecionada = 0;
  void responder (){
    perguntaSelecionada++;
    print('Pergunta Respondida!');
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
            Text(perguntas[perguntaSelecionada]),
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

  PerguntaAPPState createState() {
    return PerguntaAPPState();
  }
 
}