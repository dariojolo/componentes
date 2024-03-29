import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componenetes App'),
      ),
      body: ListView(
        children: _crearItemsCorta()

      ),
    );
  }
  List<Widget>_crearItems(){

    List<Widget>lista = new List<Widget>();

   for (var opc in opciones) {
     final widgetTemp = ListTile(title: Text('Opcion ' + opc),);
     lista..add(widgetTemp)
          ..add(Divider());
   }
    return lista;
  }
   List<Widget>_crearItemsCorta(){
     return opciones.map((item) {
       return Column(
         children: <Widget>[
           ListTile(title: Text('Opciones ' + item + "!"),
           subtitle: Text('Subtitulo ' + item),
           leading: Icon(Icons.add),
           trailing: Icon(Icons.keyboard_arrow_right),
           onTap: (){},
           ),
           Divider(),
         ],
       );
     }).toList();
   }
}