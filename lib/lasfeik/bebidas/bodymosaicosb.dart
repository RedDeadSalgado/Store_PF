import 'package:flutter/material.dart';
import 'package:ejercicio/models/bebidas.dart';
import 'detalles_screenb.dart';

class bodymosaicosb extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child:Padding(
            padding: const EdgeInsets.all(30.0),
            child: GridView.builder(
              itemCount: productsb.length,
              gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
              itemBuilder: (context, index) =>
                productos(product: productsb[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detalles_screenb(
                      product: productsb[index],
                    ),
                  )
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class productos extends StatelessWidget {
  final Productb product;
  final Function press;
  const productos({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color getColor(){
      if(product.unidades > product.minimo){
        return Color(0xffacdf87);
      }
      else{
        if(product.unidades == 0){
          return Color(0xfffe6862);
        }
        else{
          if(product.unidades <= product.minimo){
            return Color(0xffffff9c);
          }
        }
      }
    }
    return GestureDetector(
      onTap: press,
      child: Stack(
        children:<Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xff2a4e6c),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(product.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 30,
              width: 28,
              decoration: BoxDecoration(
                color: getColor(),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Text(
              '${product.unidades}',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    product.titulo,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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