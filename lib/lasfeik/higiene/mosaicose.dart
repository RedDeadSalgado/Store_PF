import 'package:flutter/material.dart';
import 'bodymosaicose.dart';

class mosaicose extends StatefulWidget{
  final String mensaje;
  mosaicose({Key key, @required this.mensaje}) : super(key: key);

  @override
  _mosaicoseState createState() => _mosaicoseState();
}

class _mosaicoseState extends State<mosaicose>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodymosaicose(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Higiene"),
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