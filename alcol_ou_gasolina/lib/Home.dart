import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var column = Column(
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcol ou Gasolina"),
        backgroundColor: Colors.orangeAccent,

      ),
      body: Container(
        
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column( 
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("images/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only( bottom: 10),
              child: Text(
                "Saiba qua a melhor opção para abastecimento do seu veículo!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:  FontWeight.bold
                ),
                ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peço Alcool, ex 1.59"
              ),
              style: TextStyle(
                fontSize: 22
              ),
              controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Gasolina, ex: 3.59"
              ),
              style: TextStyle(
                fontSize: 22
              ),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    fontSize: 20
                  ),
                  ),
                onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            child: Text(
              "Resultado",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
            )
          ],
        ),
        ),
        ),
      );
  }
}