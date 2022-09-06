import 'package:flutter/cupertino.dart';
import 'package:ejercicio/widgets/header.dart';
import 'package:ejercicio/widgets/row_with_card2.dart';
import 'package:ejercicio/widgets/row.dart';
import 'package:flutter/material.dart';

class bodycategorias extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    List<String> category = List();
    category.add("Bimbo");
    category.add("Ciel");
    category.add("Heineken");
    category.add("La Patrona");
    category.add("McCormick");
    category.add("Petalo");
    category.add("Ricolino");
    category.add("Sabritas");


    List<String> names = List();
    names.add("Aceite");
    names.add("Agua 600ml");
    names.add("Cheetos de queso");
    names.add("Arizona 600ml");
    names.add("Mayonesa");
    names.add("Paleta Payaso");
    names.add("Papel Higienico");
    names.add("Ruffles de queso");
    names.add("Ruffles flaming hot");

    List<double> costo = List();
    costo.add(35.0);
    costo.add(5.20);
    costo.add(6.0);
    costo.add(15.10);
    costo.add(10.0);
    costo.add(5.50);
    costo.add(15.0);
    costo.add(9.50);
    costo.add(9.50);

    List<double> venta = List();
    venta.add(40.0);
    venta.add(10.0);
    venta.add(9.0);
    venta.add(20.50);
    venta.add(15.0);
    venta.add(9.50);
    venta.add(23.50);
    venta.add(13.50);
    venta.add(13.50);

    List<int> unidades = List();
    unidades.add(10);
    unidades.add(20);
    unidades.add(15);
    unidades.add(20);
    unidades.add(14);
    unidades.add(20);
    unidades.add(22);
    unidades.add(15);
    unidades.add(15);

    List<int> minimas = List();
    minimas.add(5);
    minimas.add(10);
    minimas.add(7);
    minimas.add(5);
    minimas.add(2);
    minimas.add(4);
    minimas.add(5);
    minimas.add(7);
    minimas.add(7);

    List<int> codigo = List();
    codigo.add(10010101111);
    codigo.add(20010101111);
    codigo.add(30010101111);
    codigo.add(40010101111);
    codigo.add(50010101111);
    codigo.add(60010101111);
    codigo.add(70010101111);
    codigo.add(80010101111);
    codigo.add(90010101111);

    return Column(
      children: <Widget>[
        Info(
          name: "Selecciona un distribuidor",
          tipo: "Selecciona una opcion para filtrar los productos",
        ),
        Flexible(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index){
                return RowWithCardWidget (index: index,filtro: category[index],);
            },
          ),
        ),
      ],
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key key, this.name, this.tipo, this.image,
  }) : super(key: key);
  final String name, tipo, image;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: 150,
              color: Color(0xff2a4e6c),

            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.sell_outlined,
              size: 70.0,
              color: Colors.white,
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 115,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width/2, height, width, height - 100);
    path.lineTo(width,0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}