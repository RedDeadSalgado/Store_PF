import 'package:flutter/material.dart';
import 'package:ejercicio/utils/bodycategorias.dart';
import 'package:flutter/services.dart';

class categoriascircu extends StatefulWidget{
  final String mensaje;
  categoriascircu({Key key, @required this.mensaje}) : super(key: key);

  @override
  _categoriascircuState createState() => _categoriascircuState();
}

class _categoriascircuState extends State<categoriascircu>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodycategorias(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Distribuidores"),
    );
  }

}