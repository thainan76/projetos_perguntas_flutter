import 'package:flutter/material.dart';

void main() {
  runApp(Perguntas());
}

class PerguntaAppState extends State<PerguntaApp> {

  var perguntaSelecionada = 0;

  void responder(){
    
    setState( () {
      perguntaSelecionada++;
    });
    
    print('Pergunta respondida!');
  }


  @override
  Widget build(BuildContext context){

    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];


      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: Column(
            children: <Widget>[
              Text(perguntas[perguntaSelecionada]),
              RaisedButton(
                child: Text("Resposta 1:"),
                onPressed: responder,  
              ),
              RaisedButton(
                child: Text("Resposta 2:"),
                onPressed: responder,  
              ),
              RaisedButton(
                child: Text("Resposta 3:"),
                onPressed: responder,  
              ),
            ],
          ),
        ),
      );
  }

}

abstract class Perguntas extends StatefulWidget {
  
  PerguntaAppState createState(){
     return PerguntaAppState();
  }

}
