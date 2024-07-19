import 'package:flutter/material.dart';
import 'package:perguntas/questionario.dart';
import './resultado.dart';

main () => runApp(PerguntaAPP());

class _PerguntaAPPState extends State<PerguntaAPP>{
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
  final _perguntas = const [
      { 
      'texto': 'Qual a sua cor favorita?',
      'respostas':[
        {'texto': 'Preto', 'nota': 8},
        {'texto': 'Vermelho', 'nota': 7},
        {'texto': 'Verde', 'nota': 5},
        {'texto': 'Branco', 'nota': 1}
        ]
      },
      {
      'texto': 'Qual é o seu animal favorito?',
      'respostas':[
        {'texto': 'Coelho', 'nota': 8},
        {'texto': 'Cobra', 'nota': 6},
        {'texto': 'Elefante', 'nota': 5},
        {'texto': 'Leão', 'nota': 1},
        ]
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': [
          {'texto': 'Maria', 'nota': 7},
          {'texto': 'João', 'nota': 6},
          {'texto': 'Léo', 'nota': 5},
          {'texto': 'Pedro', 'nota':4},
          ]
      }
    ];
  void _responder(int nota) {
    if(temPerguntaSelecionada){
      setState(() {
    _perguntaSelecionada++;
    _notaTotal += nota; 
    });
    }
    print (_notaTotal);
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

   @override
  Widget build(BuildContext context) {
    /*for (String textoResp in respostas) {
      widgets.add(Resposta(textoResp, _responder));
    }*/
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          ),
        body
        : temPerguntaSelecionada ? Questionario(perguntas: _perguntas, perguntaSelecionada 
        : _perguntaSelecionada, responder: _responder)
        : Resultado(_notaTotal), 
    ),
    );
  }
}

class PerguntaAPP extends StatefulWidget{
  
  _PerguntaAPPState createState() {
    return _PerguntaAPPState();
  }
 
}