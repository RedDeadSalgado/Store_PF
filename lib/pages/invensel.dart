import 'package:flutter/material.dart';
import 'package:ejercicio/utils/bodyinven.dart';
import 'package:flutter/services.dart';

class invensel extends StatefulWidget{
  final String mensaje;
  invensel({Key key, @required this.mensaje}) : super(key: key);

  @override
  _invenselState createState() => _invenselState();
}

class _invenselState extends State<invensel>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodyinven(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Inventario"),

    );
  }

}