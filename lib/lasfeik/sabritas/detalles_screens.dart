import 'package:ejercicio/models/sabritas.dart';
import 'package:ejercicio/lasfeik/sabritas/bodydetalless.dart';
import 'package:flutter/material.dart';

class detalles_screens extends StatelessWidget{
  final Productss product;

  const detalles_screens({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2a4e6c),
      appBar:AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Detalles"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => print("Menu"),
            child: Icon(
              Icons.menu,
              color:Colors.white,
            ),
          ),
        ],
      ),
      body: bodydetalless(product: product),
    );
  }
}