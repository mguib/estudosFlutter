import 'package:flutter/material.dart';
import 'dart:math';



void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));


}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "VEu sou o rei do mundo",
    "Você é a resposta para todas as minhas orações. Você é uma canção, um sonho, um murmúrio, e não sei como consegui viver sem você durante tanto tempo.",
    "Odeio não conseguir te odiar por mais que eu tente ou por menos que você faça..",
    "Para mim, você é perfeita.",
    "Hasta la vista, Baby",
    "Por que tão sério?",
    "Luke, I am your father",
    "Vamos colocar um sorriso nesse rosto",
    "Não se esqueça. Eu sou apenas uma garota, parada em frente a um garoto… pedindo-o para amá-la.",
    "Grandes poderes trazem grandes responsabilidades.",
    "Nunca deixe que alguém te diga que não pode fazer algo. Nem mesmo eu. Se você tem um sonho, tem que protegê-lo. As pessoas...",
    "E os medos que uma vez me controlaram. Não chegam nem perto de mim.",
    "A melhor maneira de esquecer uma mulher é transformá-la em literatura.",
    "Dizem que um dos dois sempre ama mais, meu Deus, quem dera não fosse eu.",
    "Mantenha os seus amigos por perto, e os inimigos ainda mais perto.",
    "Que a força esteja com você!",
    "Meu nome é Bond, James Bond",
    "Ou você morre herói, ou vive o suficiente para se tornar o vilão.5",
    "É preciso muito audácia para enfrentarmos os nossos inimigos, mas igual audácia para defendermos os nossos amigos.",
    "Que os jogos começem",
    "Que dia excelente para um exorcismo",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
   
    setState(() {
       _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(20),
        //width: double.infinity,
        /*decoration: BoxDecoration(
          border: Border.all(width: 3,color: Colors.cyan)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
                color: Colors.black
              ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
          ],
        ),
      ),
        ),
      
    );
  }
}