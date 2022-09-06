import 'package:flutter/material.dart';
import 'bodymosaicoss.dart';

class mosaicoss extends StatefulWidget{
  final String mensaje;
  mosaicoss({Key key, @required this.mensaje}) : super(key: key);

  @override
  _mosaicossState createState() => _mosaicossState();
}

class _mosaicossState extends State<mosaicoss>{
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
      title: Text("Sabritas"),
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