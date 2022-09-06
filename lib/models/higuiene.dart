import 'package:flutter/material.dart';

class Producte{
  String image, titulo, descripcion, categoria, distribuidor;
  double costo, venta;
  int unidades, minimo, codigo;
  Producte({
    this.image,
    this.titulo,
    this.descripcion,
    this.costo,
    this.venta,
    this.unidades,
    this.minimo,
    this.codigo,
    this.categoria,
    this.distribuidor,
  });
}

List<Producte> productse = [
  Producte(
      titulo: "Papel Higienico",
      costo: 15.0,
      venta: 23.5,
      unidades: 22,
      minimo: 10,
      codigo: 711101,
      descripcion: "Papel higienico con la imagen de un perrete bonito.",
      categoria: "Higiene",
      distribuidor: "Petalo",
      image: "assets/images/petalo.png"
  ),
];