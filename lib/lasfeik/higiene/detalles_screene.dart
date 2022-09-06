import 'package:ejercicio/models/higuiene.dart';
import 'package:ejercicio/lasfeik/higiene/bodydetallese.dart';
import 'package:flutter/material.dart';

class detalles_screene extends StatelessWidget{
  final Producte product;

  const detalles_screene({Key key, this.product}) : super(key: key);
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
      body: bodydetallese(product: product),
    );
  }
}