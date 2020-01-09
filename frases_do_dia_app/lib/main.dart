
import 'package:flutter/material.dart';

void main(){



  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do dia",

    home: Container(
      //color: Colors.white,
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        border: Border.all(width:3, color: Colors.white)
      ),
      child: Image.asset(
        "images/vai.jpg",
        fit: BoxFit.scaleDown,
      ),
    ),
  ));


}