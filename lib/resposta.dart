import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return Column(children:[
      ElevatedButton(
        onPressed: null,
        child: Text('Resposta 2'))]);
  }
}