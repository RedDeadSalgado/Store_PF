import 'package:flutter/material.dart';

class Product{
  String image, titulo, descripcion, categoria, distribuidor;
  double costo, venta;
  int unidades, minimo, codigo;
  Product({
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

List<Product> products = [
  Product(
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
  Product(
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
  Product(
      titulo: "Arizona",
      costo: 15.50,
      venta: 20.0,
      unidades: 20,
      minimo: 5,
      codigo: 311101,
      descripcion: "Bebida en lata sabor sandia.",
      categoria: "Bebidas",
      distribuidor: "Heineken",
      image: "assets/images/arizona.png"
  ),
  Product(
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
  Product(
      titulo: "Mayonesa",
      costo: 10.50,
      venta: 15.0,
      unidades: 10,
      minimo: 2,
      codigo: 511101,
      descripcion: "Mayonesa McCormick, no Heinz",
      categoria: "Despensa",
      distribuidor: "McCormick",
      image: "assets/images/mayonesa.png"
  ),
  Product(
      titulo: "Negrito",
      costo: 5.0,
      venta: 10.5,
      unidades: 10,
      minimo: 5,
      codigo: 121212,
      descripcion: "Pan con chocolate.",
      categoria: "Pan",
      distribuidor: "Bimbo",
      image: "assets/images/negrito.png"
  ),
  Product(
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
  Product(
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
  Product(
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
  Product(
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