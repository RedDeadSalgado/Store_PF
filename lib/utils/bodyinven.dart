import 'package:ejercicio/pages/agregar_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:ejercicio/pages/categoriascircu.dart';
import 'package:ejercicio/pages/ditribuidorescircu.dart';
import 'package:ejercicio/pages/mosaicos.dart';
import 'package:flutter/material.dart';

class bodyinven extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Info(
          name: "Todo tu inventario a tu alcance",
          tipo: "Selecciona una opcion para filtrar los productos",
        ),
        Flexible(
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Card(
                elevation: 10.0,
                color: Color(0xff2a4e6c),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap:(){

                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(context) => mosaicos(mensaje: 'todo'),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.all_inbox_outlined,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Todo",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 10.0,
                color: Color(0xff2a4e6c),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap:(){

                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(context) => distribuidorescircu(mensaje: 'cate'),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.category_outlined,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Categorias",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 10.0,
                color: Color(0xff2a4e6c),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap:(){

                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(context) => categoriascircu(mensaje: 'distri'),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.sell_outlined,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Distribuidores",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 10.0,
                color: Color(0xff2a4e6c),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap:(){

                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(context) => agregar_pro(),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.add_box_outlined,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Agregar",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
          height: 220,
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
              Icons.add_box_outlined,
              size: 70.0,
              color: Colors.white,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 130,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  tipo,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "o para agregar uno nuevo.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
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