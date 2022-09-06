import 'package:ejercicio/lasfeik/bebidas/mosaicosb.dart';
import 'package:ejercicio/lasfeik/despensa/mosaicosc.dart';
import 'package:ejercicio/lasfeik/dulceria/mosaicosd.dart';
import 'package:ejercicio/lasfeik/higiene/mosaicose.dart';
import 'package:flutter/material.dart';

class RowWithCardWidget extends StatelessWidget{
  const RowWithCardWidget({
    Key key,
    @required this.index,this.filtro
  }) : super( key: key);

  final int index;
  final String filtro;

  /*final String name;
  final double costo;
  final double venta;
  final int unidades;
  final int minimas;
  final int codigo;*/

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.inventory_2_outlined,
          size: 48.0,
          color: Colors.lightBlue,
        ),
        title: Text(filtro),
        //subtitle: Text('Very Cool'),
        onTap: (){
          if(index == 0){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context) => mosaicosb(mensaje: 'todo'),
                )
            );
          }
          if(index == 1){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context) => mosaicosc(mensaje: 'todo'),
                )
            );
          }
          if(index == 2){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context) => mosaicosd(mensaje: 'todo'),
                )
            );
          }
          if(index == 3){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context) => mosaicose(mensaje: 'todo'),
                )
            );
          }
        },
      ),
    );
  }
}