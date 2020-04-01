import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

void main() {
  runApp(PerguntasApp());
}

class _PerguntaAppState extends State<PerguntasApp> {

  var _perguntaSelecionada = 0;

  void _responder(){
    
    setState( () {
      _perguntaSelecionada++;
    });

    print('Pergunta respondida!');

  }


  @override
  Widget build(BuildContext context){

    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?",
      "Qual é a sua comida favorita?",
    ];
      
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]),
              Respostas('Resposta 1', _responder),
              Respostas('Resposta 2', _responder),
              Respostas('Resposta 3', _responder),
            ],
          ),
        ),
      );
  }

}

class PerguntasApp extends StatefulWidget {
  
  _PerguntaAppState createState(){
     return _PerguntaAppState();
  }

}
