import 'package:flutter/material.dart';

main () => runApp(PerguntaAPP());

class PerguntaAPP extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Olá, Flutter!'),
      ),
    );
  }
}