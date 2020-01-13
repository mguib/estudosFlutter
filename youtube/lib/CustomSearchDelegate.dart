import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
      /*
      IconButton(
        icon: Icon(Icons.done),
        onPressed: (){

        },
      )*/
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context,"");
      },
    );
    /*
      IconButton(
        icon: Icon(Icons.done),
        onPressed: (){

        },
      )*/
  }

  

  @override
  Widget buildResults(BuildContext context) {
    //print("Resultado: pesquisa realizada");
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //print("Resultado: digitado " + query);

    List<String> lista = List();

    if( query.isNotEmpty ){
      lista = [
        "Game", "Joystick", "RPG", "Jogos", "2d", "player", "Top Down", "Controller input", "Input",
        "Animation in Unity", "Camera in Unity", "Tile Map", "Storytelling", "Sons in Unity", "Pixel art", "Menus in Unity" 
      ].where(
        (texto) => texto.toLowerCase().startsWith(query.toLowerCase()),
      ).toList();

      return ListView.builder(
      itemCount: lista.length,
      itemBuilder: (context, index){
        return ListTile(
          onTap: () {
            close(context, lista[index]);
          },
          title: Text(lista[index]),
        );
      },
    );
    }else{
      return Center(
        child: Text("Nenhum resultado para a pesquisa!"),
      );
    }
    
  }
}
