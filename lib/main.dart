import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main () => runApp(PerguntaAPP());

class _PerguntaAPPState extends State<PerguntaAPP>{
  var _perguntaSelecionada = 0;
  final _perguntas = const [
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
  void _responder() {
    if(temPerguntaSelecionada){
      setState(() {
    _perguntaSelecionada++;
    });
    }
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

   @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada].cast()['respostas'] : [];
    /*for (String textoResp in respostas) {
      widgets.add(Resposta(textoResp, _responder));
    }*/
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          ),
        body: temPerguntaSelecionada ? Column (
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada] ['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
          ) : Center(
            child: Text('Parabéns!', style: TextStyle(fontSize: 28),
          ),
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