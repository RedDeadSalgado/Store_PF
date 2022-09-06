import 'package:flutter/material.dart';
import 'package:ejercicio/utils/bodydistribuidores.dart';
import 'package:flutter/services.dart';

class distribuidorescircu extends StatefulWidget{
  final String mensaje;
  distribuidorescircu({Key key, @required this.mensaje}) : super(key: key);

  @override
  _distribuidorescircuState createState() => _distribuidorescircuState();
}

class _distribuidorescircuState extends State<distribuidorescircu>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodydistribuidores(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Categorias"),
    );
  }

}