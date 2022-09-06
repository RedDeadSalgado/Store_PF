import 'package:ejercicio/models/productos.dart';
import 'package:ejercicio/utils/bodydetalles.dart';
import 'package:flutter/material.dart';

class detalles_screen extends StatelessWidget{
  final Product product;

  const detalles_screen({Key key, this.product}) : super(key: key);
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
      body: bodydetalles(product: product),
    );
  }
}