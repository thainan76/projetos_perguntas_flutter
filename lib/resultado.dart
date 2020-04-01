import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() quandoReninciarQuestionario;

  Resultado(this.pontuacao, this.quandoReninciarQuestionario);

  String get fraseResultado{
    if(pontuacao < 8){
      return 'Parabéns!';
    }else if (pontuacao < 12){
      return 'Voce eh bom';
    }else if (pontuacao < 16){
      return 'Impressionante';
    }else{
      return 'Nível Jedi!!';
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
                child: Text(
                  fraseResultado,
                  style: TextStyle(fontSize: 28),
                ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 28),
            ),
          textColor: Colors.blue,
          onPressed: quandoReninciarQuestionario,
          )
      ],
    );
  }
}