import 'package:flutter/material.dart';

class Productd{
  String image, titulo, descripcion, categoria, distribuidor;
  double costo, venta;
  int unidades, minimo, codigo;
  Productd({
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

List<Productd> productsd = [
  Productd(
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
  Productd(
      titulo: "Paleta Payaso",
      costo: 5.50,
      venta: 9.0,
      unidades: 20,
      minimo: 4,
      codigo: 611101,
      descripcion: "Paleta de bombom cubierta de chocolate.",
      categoria: "Dulceria",
      distribuidor: "Ricolino",
      image: "assets/images/payaso.png"
  ),
  Productd(
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
  Productd(
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