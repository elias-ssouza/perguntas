import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main () => runApp(PerguntaAPP());

class _PerguntaAPPState extends State<PerguntaAPP>{
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
    _perguntaSelecionada++;
    });
  }

   @override
  Widget build(BuildContext context) {
    final perguntas = [
      { 
      'texto': 'Qual a sua cor favorita?',
      'repostas':['Preto','Vermelho','Verde','Branco']
      },
      {
      'texto': 'Qual é o seu animal favorito?',
      'repostas':['Coelho','Cobra','Elefante','Leão']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'repostas': ['Maria','João','Léo','Pedro']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas', 
          textAlign: TextAlign.center),
          ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada] ['texto'].toString()),
            Resposta('Resposta 1',_responder),
            Resposta('Resposta 2',_responder),
            Resposta('Resposta 3',_responder),
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