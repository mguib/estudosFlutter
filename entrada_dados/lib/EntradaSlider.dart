import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double valor = 0;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[

            Slider(
              value: valor,
              min: 0,
              max: 10,
              label: label,
              divisions: 5,
              activeColor: Colors.green,
              inactiveColor: Colors.black12,
              onChanged: (double novoValor){
                setState(() {
                  valor = novoValor;
                  label = novoValor.toString();
                });
                //print("Valor selecionado: " + novoValor.toString());
              },
              ),


              RaisedButton(
                child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
                ),
                onPressed: (){
                //print("Resultado: " + _escolhaUsuario.toString());
               print("Valor selecionado: " +valor.toString());

              },
            )
            /*
            Switch(
              value: true,
               onChanged: (bool valor){
                 _escolhaUsuario = valor;
                 setState(() {
                   _escolhaUsuario = valor;
                 });
               } ,
               ),
                */

          ]
        ),
      ),
    );
  }
}