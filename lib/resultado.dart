
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
final int nota;
final void Function() reiniciarQuestionario;

Resultado(this.nota, this.reiniciarQuestionario);


String get fraseResultado{
  if(nota < 8){
   return 'Parabéns!'; 
  } else if (nota < 12){
    return 'Você é bom';
  } else if (nota < 16){
    return 'Impressionante';
  } else {
    return 'Perfeito!';
  }
}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
                child: Text(fraseResultado, 
                style: TextStyle(fontSize: 28),
              ),
            ),
            TextButton(onPressed: reiniciarQuestionario, child: 
            Text('Reiniciar', 
            style: TextStyle(fontSize: 18), 
            selectionColor: Colors.blue,),
            )
      ],
    );
  }
}