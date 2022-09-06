import 'package:ejercicio/models/despensa.dart';
import 'package:ejercicio/lasfeik/despensa//bodydetallesc.dart';
import 'package:flutter/material.dart';

class detalles_screenc extends StatelessWidget{
  final Productc product;

  const detalles_screenc({Key key, this.product}) : super(key: key);
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
      body: bodydetallesc(product: product),
    );
  }
}