import 'dart:html';

import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';
import './resultado.dart';
import './questionario.dart';


void main() {
  runApp(PerguntasApp());
}

class _PerguntaAppState extends State<PerguntasApp> {

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  void _responder(int pontuacao){
    
    setState( () {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });

    print('Pergunta respondida!');

  }

  

  final _perguntas = const [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': [
           {
             'texto': 'Preto', 'pontuacao': 10
           },
           {
             'texto': 'Vermelho', 'pontuacao': 3
           },
           {
             'texto': 'Roxa', 'pontuacao': 5
           },
           {
             'texto': 'Branco', 'pontuacao': 7
           } 
        ]
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': [
            {
              'texto': 'Cachorro', 'pontuacao': 10
            },
            {
              'texto': 'Dinoussauro', 'pontuacao': 3
            },
            {
              'texto': 'Camelo', 'pontuacao': 5
            },
            {
              'texto': 'Tigre', 'pontuacao': 7
            } 
        ]
      },
      {
        'texto': 'Qual é a sua comida favorita?',
        'respostas': [
           {
             'texto': 'Pizza', 'pontuacao': 10
           },
           {
             'texto': 'Lasanha', 'pontuacao': 3
           },
           {
             'texto': 'Esfiha', 'pontuacao': 5
           },
           {
             'texto': 'Strogonoff', 'pontuacao': 7
           } 
        ]
      }
    ];


  void _reiniciarQuestionario(){
    setState((){
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context){

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: temPerguntaSelecionada ? 
           Questionario(
            perguntas: _perguntas,
            perguntaSelecionada: _perguntaSelecionada,
            responder: _responder,
           )
           : Resultado(_pontuacaoTotal, _reiniciarQuestionario)
        ),
      );
  }

}

class PerguntasApp extends StatefulWidget {
  
  _PerguntaAppState createState(){
     return _PerguntaAppState();
  }

}
