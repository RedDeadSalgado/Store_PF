import 'dart:io';

import 'package:ejercicio/models/productos.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class bodyagregarpro extends StatelessWidget{
  final Product product;

  const bodyagregarpro({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List listDistri = ['Ciel','Heineken','La Patrona', 'McCormick', 'Petalo', 'Ricolino', 'Sabritas'];
    List listCategoria = ['Bebidas','Despensa','Dulceria','Higiene'];
    var lastoas = 0;
    final costo = TextEditingController();
    final venta = TextEditingController();
    final ganancia = TextEditingController();
    final unidades = TextEditingController();
    final minimo = TextEditingController();
    final codigo = TextEditingController();
    final descripcion = TextEditingController();

    costo.text =  '${product.costo}';
    venta.text =  '${product.venta}';
    ganancia.text =  '${product.venta - product.costo}';
    unidades.text =  '${product.unidades}';
    minimo.text =  '${product.minimo}';
    codigo.text = '${product.codigo}';
    descripcion.text = '${product.descripcion}';

    File imageFile = null;
    final picker = ImagePicker();

    chooseImage(ImageSource source) async{
      final pickedFile = await picker.getImage(source: source);
      setState((){
        imageFile = File(pickedFile.path);
      });
    }

    String getLucro(){
      ganancia.text = (double.parse(venta.text) - double.parse(costo.text)).toString();
      return "hi";
    }



    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Costo: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0,2),
                                      ),
                                    ],
                                  ),
                                  height: 30.0,
                                  width: 100.0,
                                  child: TextField(
                                    onChanged: (String value) {
                                      /// The value is the value of the TextField.
                                      /// You can perform the calculations here:
                                      getLucro();
                                    },
                                    controller: costo,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border:InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 0),
                                      prefixIcon: Icon(
                                        Icons.attach_money_rounded,
                                        color:Color(0x662a4e6c),
                                      ),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        color:Colors.black38,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Venta: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0,2),
                                      ),
                                    ],
                                  ),
                                  height: 30.0,
                                  width: 100.0,
                                  child: TextField(
                                    onChanged: (String value) {
                                      /// The value is the value of the TextField.
                                      /// You can perform the calculations here:
                                      getLucro();
                                    },
                                    controller: venta,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border:InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 0),
                                      prefixIcon: Icon(
                                        Icons.attach_money_rounded,
                                        color:Color(0x662a4e6c),
                                      ),
                                      hintStyle: TextStyle(
                                        color:Colors.black38,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Lucro: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0,2),
                                      ),
                                    ],
                                  ),
                                  height: 30.0,
                                  width: 100.0,
                                  child: TextField(
                                    readOnly: true,
                                    showCursor: false,
                                    controller: ganancia,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border:InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 0),
                                      prefixIcon: Icon(
                                        Icons.attach_money_rounded,
                                        color:Color(0x662a4e6c),
                                      ),
                                      hintStyle: TextStyle(
                                        color:Colors.black38,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          thickness: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Unidades: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0,2),
                                      ),
                                    ],
                                  ),
                                  height: 30.0,
                                  width: 80.0,
                                  child: TextField(
                                    controller: unidades,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border:InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 0),
                                      prefixIcon: Icon(
                                        Icons.inventory_2_outlined,
                                        color:Color(0x662a4e6c),
                                      ),
                                      hintStyle: TextStyle(
                                        color:Colors.black38,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Minimo: ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 6,
                                            offset: Offset(0,2),
                                          ),
                                        ],
                                      ),
                                      height: 30.0,
                                      width: 80.0,
                                      child: TextField(
                                        controller: minimo,
                                        keyboardType: TextInputType.emailAddress,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          border:InputBorder.none,
                                          contentPadding: EdgeInsets.only(top: 0),
                                          prefixIcon: Icon(
                                            Icons.inventory_2_outlined,
                                            color:Color(0x662a4e6c),
                                          ),
                                          hintStyle: TextStyle(
                                            color:Colors.black38,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          thickness: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Codigo: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0,2),
                                      ),
                                    ],
                                  ),
                                  height: 30.0,
                                  width: 200.0,
                                  child: TextField(
                                    controller: codigo,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border:InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 0),
                                      prefixIcon: Icon(
                                        Icons.qr_code_2,
                                        color:Color(0x662a4e6c),
                                      ),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        color:Colors.black38,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          thickness: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Descripcion: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0,2),
                                      ),
                                    ],
                                  ),
                                  height: 90.0,
                                  width: 240.0,
                                  child: TextField(
                                    minLines: 1,
                                    maxLines: 5,  // allow user to enter 5 line in textfield
                                    keyboardType: TextInputType.multiline,
                                    controller: descripcion,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      border:InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 0, left: 5),
                                      hintStyle: TextStyle(
                                        color:Colors.black38,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                    child: imageFile != null ? Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: FileImage(imageFile),
                                        ),
                                      ),
                                    )
                                        : Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),),
                                ),
                                SizedBox(width: 50),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      //margin: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      height: 30.0,
                                      width: 150.0,
                                      child: FlatButton(
                                        child: Text('Imagen'),
                                        color: Color(0xff2a4e6c),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          chooseImage(ImageSource.gallery);
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      //margin: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      height: 30.0,
                                      width: 150.0,
                                      child: FlatButton(
                                        child: Text('Guardar'),
                                        color: Color(0xff2a4e6c),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          if(lastoas == 0 ){
                                            _showToast(context);
                                            lastoas = 1;
                                          }else{
                                            if(lastoas == 1 ){
                                              _showToast2(context);
                                              lastoas = 2;
                                            }
                                            else{
                                              if(lastoas == 2 ){
                                                _showToast3(context);
                                                lastoas = 3;
                                              }
                                            }
                                          }


                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),

                        /*Container(
                          child: imageFile != null ? Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(imageFile),
                              ),
                            ),
                          )
                          : Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                          )
                        ),*/

                          //COBRARRRRRRR
                      ],
                    ),
                  ),
                ),
                nombre_catydis(product: product),
                imagendepro(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _showToast2(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Distribuidor y Categoria no registradas'),
        action: SnackBarAction(label: 'AGREGAR', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _showToast3(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Producto agregado'),
        //action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Formulario incompleto'),
        //action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
  void setState(File Function() param0) {}
}

class imagendepro extends StatelessWidget {
  const imagendepro({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30.0,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 180.0,
            ),


           /*Expanded(
              child: Image.asset(
                  product.image
              ),
            ),*/



          ],
        ),
      ],
    );
  }
}

class nombre_catydis extends StatelessWidget {
  const nombre_catydis({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Nombre: ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0,2),
                    ),
                  ],
                ),
                height: 35.0,
                width: 220.0,
                child: TextField(
                  onChanged: (String value) {
                    /// The value is the value of the TextField.
                    /// You can perform the calculations here:
                  },
                  //controller: name,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 0),
                    prefixIcon: Icon(
                      Icons.inventory_2_outlined,
                      color:Color(0x662a4e6c),
                    ),
                    hintText: ' Producto',
                    hintStyle: TextStyle(
                      color:Colors.black38,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Distribuidor: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0,2),
                        ),
                      ],
                    ),
                    height: 30.0,
                    width: 225.0,
                    child: TextField(
                      onChanged: (String value) {
                        /// The value is the value of the TextField.
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 0),
                        prefixIcon: Icon(
                          Icons.inventory_2_outlined,
                          color:Color(0x662a4e6c),
                        ),
                        hintText: 'Distribuidor',
                        hintStyle: TextStyle(
                          color:Colors.black38,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),

          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Categoria:     ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0,2),
                        ),
                      ],
                    ),
                    height: 30.0,
                    width: 225.0,
                    child: TextField(
                      onChanged: (String value) {
                        /// The value is the value of the TextField.
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 0),
                        prefixIcon: Icon(
                          Icons.inventory_2_outlined,
                          color:Color(0x662a4e6c),
                        ),
                        hintText: 'Categoria',
                        hintStyle: TextStyle(
                          color:Colors.black38,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}