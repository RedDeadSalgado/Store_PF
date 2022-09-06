import 'package:flutter/material.dart';

class Productb{
  String image, titulo, descripcion, categoria, distribuidor;
  double costo, venta;
  int unidades, minimo, codigo;
  Productb({
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

List<Productb> productsb = [
  Productb(
      titulo: "Agua 600ml",
      costo: 5.20,
      venta: 10,
      unidades: 20,
      minimo: 10,
      codigo: 211101,
      descripcion: "Botella de agua de 600ml.",
      categoria: "Bebidas",
      distribuidor: "Ciel",
      image: "assets/images/ciel.png"
  ),
  Productb(
      titulo: "Arizona",
      costo: 15.50,
      venta: 20.0,
      unidades: 20,
      minimo: 5,
      codigo: 9781250318541,
      descripcion: "Bebida en lata sabor sandia.",
      categoria: "Bebidas",
      distribuidor: "Heineken",
      image: "assets/images/arizona.png"
  ),
];