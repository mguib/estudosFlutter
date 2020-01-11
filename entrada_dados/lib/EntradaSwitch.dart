
import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
   bool _escolhaConfigue = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[


             SwitchListTile(
                 title: Text("Receber Notificações?"),
                value: _escolhaUsuario,
                 onChanged: (bool valor){
                 _escolhaUsuario = valor;
                 setState(() {
                   _escolhaUsuario = valor;
                 });
               } ,
               ),

               SwitchListTile(
                title: Text("Carregar imagnes altomaticamente?"),
                value: _escolhaConfigue,
                onChanged: (bool valor){
                 setState(() {
                   _escolhaConfigue = valor;
                 });
               } ,
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
                if(_escolhaUsuario) {
                  print("Escola: Ativar notificações");
                }else{
                  print("Escolha: Nao ativar notifiaçãoes");
                }

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