import 'package:flutter/material.dart';

class Productc{
  String image, titulo, descripcion, categoria, distribuidor;
  double costo, venta;
  int unidades, minimo, codigo;
  Productc({
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

List<Productc> productsc = [
  Productc(
      titulo: "Aceite",
      costo: 35.50,
      venta: 40.0,
      unidades:5,
      minimo: 5,
      codigo: 111101,
      descripcion: "Aceite de origen vegetal la patrona.",
      categoria: "Despensa",
      distribuidor: "La Patrona",
      image: "assets/images/aceite.png"
  ),
  Productc(
      titulo: "Mayonesa",
      costo: 10.50,
      venta: 15.0,
      unidades: 0,
      minimo: 2,
      codigo: 511101,
      descripcion: "Mayonesa McCormick, no Heinz",
      categoria: "Despensa",
      distribuidor: "McCormick",
      image: "assets/images/mayonesa.png"
  ),
];