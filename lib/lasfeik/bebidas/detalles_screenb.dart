import 'package:ejercicio/models/bebidas.dart';
import 'package:ejercicio/lasfeik/bebidas/bodydetallesb.dart';
import 'package:flutter/material.dart';

class detalles_screenb extends StatelessWidget{
  final Productb product;

  const detalles_screenb({Key key, this.product}) : super(key: key);
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
      body: bodydetallesb(product: product),
    );
  }
}