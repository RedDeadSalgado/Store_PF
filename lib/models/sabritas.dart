import 'package:flutter/material.dart';

class Productss{
  String image, titulo, descripcion, categoria, distribuidor;
  double costo, venta;
  int unidades, minimo, codigo;
  Productss({
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

List<Productss> productsss = [
  Productss(
      titulo: "Cheetos con queso",
      costo: 6.0,
      venta: 9.50,
      unidades: 7,
      minimo: 7,
      codigo: 411101,
      descripcion: "Frituras de maiz con sabor a queso.",
      categoria: "Dulceria",
      distribuidor: "Sabritas",
      image: "assets/images/chetos.png"
  ),
  Productss(
      titulo: "Ruffles de Queso",
      costo: 9.5,
      venta: 13.5,
      unidades: 15,
      minimo: 7,
      codigo: 811101,
      descripcion: "Frituras con sabor a queso.",
      categoria: "Dulceria",
      distribuidor: "Sabritas",
      image: "assets/images/ruflesqueso.png"
  ),
  Productss(
      titulo: "Ruffles Flaming Hot",
      costo: 9.5,
      venta: 13.5,
      unidades: 15,
      minimo: 7,
      codigo: 911101,
      descripcion: "Frituras picantes.",
      categoria: "Dulceria",
      distribuidor: "Sabritas",
      image: "assets/images/ruflesflamin.png"
  ),
];