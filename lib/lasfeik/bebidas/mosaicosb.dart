import 'package:flutter/material.dart';
import 'bodymosaicosb.dart';

class mosaicosb extends StatefulWidget{
  final String mensaje;
  mosaicosb({Key key, @required this.mensaje}) : super(key: key);

  @override
  _mosaicosbState createState() => _mosaicosbState();
}

class _mosaicosbState extends State<mosaicosb>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodymosaicosb(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Bebidas"),
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