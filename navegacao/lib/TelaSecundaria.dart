import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {


  String valor;

  TelaSecundaria({this.valor});

 
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela principal"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text("Segunda tela!"),
             RaisedButton(
              child: Text("Ir para Primeira tela"),
              padding: EdgeInsets.all(15),
              onPressed: (){
                Navigator.pushNamed(context, "/");
              },
            )
          ],
        ),
      ) ,
      );
  }
}