import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _resultado = "Resultado";
  TextEditingController _controllerCep = TextEditingController();
  

  //Comunicação Síncrona e Assincrona
  _recuperarCep() async {
    String cepDigitado = _controllerCep.text;
    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    //print(
      //"Resposta logradourto: ${logradouro} complemento: ${complemento} bairro: ${bairro} localidade: ${localidade} "
     // );



    //print("resposta: " + response.body);
    //print("resposta: " + response.statusCode.toString());
    setState(() {
      _resultado = "${logradouro}, ${complemento}, ${bairro}, ${localidade}";
    });


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Consumo de Servico Web",
        ),
      ),
      body:Container(
        padding: EdgeInsets.all(40),
        child: Column(children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite o cep: Ex: 1245678"
            ),
            style: TextStyle(
              fontSize: 20
            ),
            controller: _controllerCep,
          ),
          RaisedButton(
            child: Text("Clique aqui"),
            onPressed: _recuperarCep,
          ),
          Text(_resultado)
        ],),
      ),
    );
  }
}