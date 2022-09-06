import 'package:ejercicio/models/dulceria.dart';
import 'package:ejercicio/lasfeik/dulceria/bodydetallesd.dart';
import 'package:flutter/material.dart';

class detalles_screend extends StatelessWidget{
  final Productd product;

  const detalles_screend({Key key, this.product}) : super(key: key);
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
      body: bodydetallesd(product: product),
    );
  }
}