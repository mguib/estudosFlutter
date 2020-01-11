import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCState createState() => _EntradaCState();
}

class _EntradaCState extends State<EntradaCheckbox> {
  bool _ecomidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("Os mais famosos tipo de comida Brasileira"),
              //activeColor: Colors.red,
              //selected: true,
              secondary: Icon(Icons.add_box),
              value: _ecomidaBrasileira,
              onChanged: (bool valor) {
                setState(() {
                  _ecomidaBrasileira = valor;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("Os mais famosos tipo de comida Mexicana"),
              //activeColor: Colors.red,
              //selected: true,
              secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (bool valor) {
                setState(() {
                  _comidaMexicana = valor;
                });
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
                print(
                  "Comida Brasileira: " + _ecomidaBrasileira.toString() +
                  " Comida Mexicana " + _comidaMexicana.toString()
                  );
              },
            )

            /*
            Text("Comida Brasileira"),
            Checkbox(
              value: _estadoSelecionado,
              onChanged: (bool valor){
                setState(() {
                  _estadoSelecionado = valor;
                });
                print("Checkbox: " + valor.toString() );
              },
            )

            */
          ],
        ),
      ),
    );
  }
}
