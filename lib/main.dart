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

    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Rosa','Azul']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Macaco','Porco']
      },
      {
        'texto': 'Qual é a sua comida favorita?',
        'respostas': ['Strogonoff', 'Lasanha', 'Pizza','Lanche']
      }
    ];

    List<String> resposta = perguntas[_perguntaSelecionada]['respostas'];
    //List<Widget> widget = resposta.map((t) => Respostas(t, _responder)).toList();

    /*for(String textRespostas in resposta){
      widget.add(Respostas(textRespostas, _responder));
    }  */

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]['texto']),
              ...resposta.map((t) => Respostas(t, _responder)).toList(),
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
