import 'package:flutter/material.dart';
import 'package:ejercicio/utils/bodymosaicos.dart';
import 'package:flutter/services.dart';

class mosaicos extends StatefulWidget{
  final String mensaje;
  mosaicos({Key key, @required this.mensaje}) : super(key: key);

  @override
  _mosaicosState createState() => _mosaicosState();
}

class _mosaicosState extends State<mosaicos>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodymosaicos(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Todo"),
      actions: <Widget>[
        FlatButton(
          onPressed: () => print("Menu"),
          child: Icon(
            Icons.menu,
            color:Colors.white,
          ),
        ),
      ],
    );
  }
}