import 'package:ejercicio/pages/estadisticas.dart';
import 'package:ejercicio/utils/cajaregis.dart';
import 'package:flutter/cupertino.dart';
import 'package:ejercicio/pages/invensel.dart';
import 'package:ejercicio/pages/historico.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Info(
          image: "assets/images/maistore.png",
          name: "La guadalupana",
          tipo: "Tienda de abarrotes",
        ),
        SizedBox(height: 15),
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
                          builder:(context) => cajaregis(mensaje: 'Jefe'),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.attach_money_rounded,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Vender",
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
                          builder:(context) => invensel(mensaje: 'Jefe'),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.inventory_2_outlined,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Inventario",
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
                          builder:(context) => historico(mensaje: 'Jefe'),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Historico",
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
                          builder:(context) => estadisticas(mensaje: 'Jefe'),
                        )
                    );
                  },
                  splashColor: Color(0x662a4e6c),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.auto_graph_rounded,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Estadisticas",
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
    return SizedBox(
      height: 220,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: 150,
              color: Color(0xff2a4e6c),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:Colors.white,
                      width: 8,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
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