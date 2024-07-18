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
      'respostas':['Preto','Vermelho','Verde','Branco']
      },
      {
      'texto': 'Qual é o seu animal favorito?',
      'respostas':['Coelho','Cobra','Elefante','Leão']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria','João','Léo','Pedro']
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];

    /*for (String textoResp in respostas) {
      widgets.add(Resposta(textoResp, _responder));
    }*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada] ['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaAPP extends StatefulWidget{
  
  _PerguntaAPPState createState() {
    return _PerguntaAPPState();
  }
 
}