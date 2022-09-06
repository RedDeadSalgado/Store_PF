import 'package:flutter/material.dart';
import 'bodymosaicosc.dart';

class mosaicosc extends StatefulWidget{
  final String mensaje;
  mosaicosc({Key key, @required this.mensaje}) : super(key: key);

  @override
  _mosaicoscState createState() => _mosaicoscState();
}

class _mosaicoscState extends State<mosaicosc>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodymosaicosc(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Despensa"),
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