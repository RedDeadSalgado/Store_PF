import 'package:flutter/material.dart';
import 'bodymosaicosd.dart';

class mosaicosd extends StatefulWidget{
  final String mensaje;
  mosaicosd({Key key, @required this.mensaje}) : super(key: key);

  @override
  _mosaicosdState createState() => _mosaicosdState();
}

class _mosaicosdState extends State<mosaicosd>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: bodymosaicosd(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Dulceria"),
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