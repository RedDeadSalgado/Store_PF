import 'package:flutter/material.dart';
import 'package:ejercicio/lasfeik/sabritas/mosaicoss.dart';
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
          Icons.store_mall_directory ,
          size: 48.0,
          color: Colors.lightBlue,
        ),
        title: Text(filtro),
        //subtitle: Text('Very Cool'),
        onTap: (){
          if(index == 6){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context) => mosaicoss(mensaje: 'todo'),
                )
            );
          }
        },
      ),
    );
  }
}