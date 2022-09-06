import 'package:flutter/material.dart';
import 'package:ejercicio/utils/body.dart';
import 'package:flutter/services.dart';

class menu extends StatefulWidget{
  final String mensaje;
  menu({Key key, @required this.mensaje}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Bienvenido"),
      actions: <Widget>[
        FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.logout_rounded,
            color:Colors.white,
          ),
        ),
      ],
    );
  }

}