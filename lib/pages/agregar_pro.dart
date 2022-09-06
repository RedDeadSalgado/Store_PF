import 'package:ejercicio/models/productos.dart';
import 'package:ejercicio/utils/bodyagregarpro.dart';
import 'package:ejercicio/utils/bodydetalles.dart';
import 'package:flutter/material.dart';

final Product este = Product(
    titulo: "",
    costo: 0,
    venta: 0,
    unidades:0,
    minimo: 0,
    codigo: 0,
    descripcion: "",
    categoria: "",
    distribuidor: "",
    image: ""
);

class agregar_pro extends StatelessWidget{


  const agregar_pro({Key key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2a4e6c),
      appBar:AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Agregar"),
      ),
      body: bodyagregarpro(product: este),
    );
  }
}