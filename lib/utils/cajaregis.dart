import 'package:flutter/material.dart';
import 'package:ejercicio/models/productos.dart';
import 'bodycaja.dart';

class cajaregis extends StatefulWidget{
  final String mensaje;
  cajaregis({Key key, @required this.mensaje}) : super(key: key);

  @override
  _cajaregisState createState() => _cajaregisState();
}

final pago = TextEditingController();
final total = TextEditingController();
final cambio = TextEditingController();
final codigo = TextEditingController();
final List<String> names = <String>[];
final List<int> msgCount = <int>[];
final List<int> posis = <int>[];
final List<double> prices = <double>[];
final int indexPRO = 0;
double totalpagar = 0;
final double pri = 5.5;

final List<int> codiginis = <int>[111101,211101,311101,411101,511101,121212,611101,711101,811101,911101];

class _cajaregisState extends State<cajaregis>{
  var lastoas = 0;
  void vaciar(){
    setState(() {
      names.clear();
      msgCount.clear();
      prices.clear();
      codigo.text = "";
      cambio.text = "";
      pago.text = "";
      total.text = "";
    });
  }

  @override
  void initState(){
    vaciar();
    codigo.text = "";
  }

  void getCambio(){
   cambio.text = (double.parse(pago.text) - double.parse(total.text)).toString();
  }

  String getTotal(){
    double totaliti = 0.0;
    //print(prices.length);
    for(var i = 0; i < prices.length; i++){
      totaliti += prices[i];
      //print(totaliti);
    }
    total.text = totaliti.toString();
  }

  void addItemToList(){
    setState(() {
      if(names.contains(codigo.text)){
        final index = names.indexWhere((element) =>
        element == codigo.text);
        msgCount[index] = msgCount[index]+1;
        prices[index] = pri * msgCount[index];
      }
      else {
        if(codigo.text != ""){
          names.insert(0, codigo.text);
          prices.insert(0, 5.3);
          msgCount.insert(0, 1);
        }
      }
    });
  }

  void addItemToList2(){
    setState(() {
      if(codigo.text != "" && codiginis.contains(int.parse(codigo.text))){
        final index = codiginis.indexWhere((element) =>
        element == int.parse(codigo.text));
        //print(index);
        if(names.contains(products[index].titulo)){
          final index2 = names.indexWhere((element) =>
          element == products[index].titulo);
          msgCount[index2] = msgCount[index2]+1;
          prices[index2] = products[index].venta * msgCount[index2];
        }
        else {
          if(codigo.text != ""){
            names.insert(0, products[index].titulo);
            prices.insert(0, products[index].venta);
            posis.insert(0, index);
            msgCount.insert(0, 1);
          }
        }
      }
      getTotal();
    });
  }

  void removeItemToList2(){
    setState(() {
      if(codigo.text != "" &&  codiginis.contains(int.parse(codigo.text))){
        final index = codiginis.indexWhere((element) =>
        element == int.parse(codigo.text));
        print(index);
        if(names.contains(products[index].titulo)){
          final index2 = names.indexWhere((element) =>
          element == products[index].titulo);
          if(msgCount[index2] > 1){
            msgCount[index2] = msgCount[index2]-1;
            prices[index2] = products[index].venta * msgCount[index2];
          }
          else {
              posis.removeAt(index2);
              names.remove(products[index].titulo);
              msgCount.removeAt(index2);
              prices.removeAt(index2);
          }
        }
      }
      getTotal();
    });
  }

  void removeItemToList(){
    setState(() {
      if(names.contains(codigo.text)){
        final index = names.indexWhere((element) =>
        element == codigo.text);
        if(msgCount[index] > 1){
          msgCount[index] = msgCount[index]-1;
          prices[index] = pri * msgCount[index];
        }
        else{
          names.remove(codigo.text);
          msgCount.removeAt(index);
          prices.removeAt(index);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:buildAppBar(),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              SizedBox(width: 7),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Pago: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 10),
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
                        width: 110.0,
                        child: TextField(
                          onChanged: (String value) {
                            /// The value is the value of the TextField.
                            /// You can perform the calculations here:
                            getCambio();
                          },
                          controller: pago,
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
                            hintText: '0.0',
                            hintStyle: TextStyle(
                              color:Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),          //PAGOOOOOOOOOOOOO
              SizedBox(width: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Total: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 10),
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
                        width: 110.0,
                        child: TextField(
                          readOnly: true,
                          showCursor: false,
                          onChanged: (String value) {
                            /// The value is the value of the TextField.
                            /// You can perform the calculations here:
                          },
                          controller: total,
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
                            hintText: '0.0',
                            hintStyle: TextStyle(
                              color:Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),          //TOTALLLLLLLLLL
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              SizedBox(width: 23),
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
                  child: Text('Cobrar'),
                  color: Color(0xff2a4e6c),
                  textColor: Colors.white,
                  onPressed: () {
                    if(lastoas == 0 ){
                      _showToast(context);
                      lastoas = 1;
                    }else{
                      _showToast2(context);
                    }
                  },
                ),
              ),   //COBRARRRRRRR
              SizedBox(width: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Vuelto: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 10),
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
                        width: 110.0,
                        child: TextField(
                          readOnly: true,
                          showCursor: false,
                          onChanged: (String value) {
                            /// The value is the value of the TextField.
                            /// You can perform the calculations here:
                          },
                          controller: cambio,
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
                            hintText: '0.0',
                            hintStyle: TextStyle(
                              color:Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),         //VUELTOOOOOO
            ],
          ),
          SizedBox(height: 7),
          Divider(
            thickness: 5,
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 17),
              Column(
                children: <Widget>[
                  SizedBox(height: 10),
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
                    width: 220.0,
                    child: TextField(
                      onChanged: (String value) {
                        /// The value is the value of the TextField.
                        /// You can perform the calculations here:
                      },
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
                        hintStyle: TextStyle(
                          color:Colors.black38,
                        ),
                      ),
                    ),
                  ),
                ],
              ),      //CODIGOOOO
              SizedBox(width: 30),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
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
                    width: 40.0,
                    child: FlatButton(
                      child: Text('+'),
                      color: Color(0xff2a4e6c),
                      textColor: Colors.white,
                      onPressed: () {
                        addItemToList2();
                      },
                    ),
                  ),
                ],
              ),      // AGREGARrrr
              SizedBox(width: 20),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
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
                    width: 40.0,
                    child: FlatButton(
                      child: Text('-'),
                      color: Color(0xff2a4e6c),
                      textColor: Colors.white,
                      onPressed: (){
                        removeItemToList2();
                      },
                    ),
                  ),
                ],
              ),      // QUITAAAR
            ],
          ),
          SizedBox(height:10),
          Divider(
            thickness: 5,
          ),
          SizedBox(height:10),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        codigo.text =  products[posis[index]].codigo.toString();
                      },
                      child:Container(
                        height: 50,
                        margin: EdgeInsets.all(2),
                        color:  Colors.grey,
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height: 15),
                                Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        SizedBox(width: 10),
                                        Text(
                                          '${names[index]}',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(width: 340),
                                        Text(
                                          '(${msgCount[index]})',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(width: 300),
                                        Text(
                                          '${prices[index]}',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    );


                  }
              )
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Caja registradora"),
      actions: <Widget>[
        FlatButton(
          onPressed: (){
            vaciar();
          },
          child: Icon(
            Icons.no_sim_outlined,
            color:Colors.white,
          ),
        ),
      ],
    );
  }
}



class bodycaja extends StatelessWidget {
  final String data;

  const bodycaja({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {




    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width: 7),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Pago: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10),
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
                      width: 110.0,
                      child: TextField(
                        onChanged: (String value) {
                          /// The value is the value of the TextField.
                          /// You can perform the calculations here:
                        },
                        controller: pago,
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
                          hintText: '0.0',
                          hintStyle: TextStyle(
                            color:Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),          //PAGOOOOOOOOOOOOO
            SizedBox(width: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Total: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10),
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
                      width: 110.0,
                      child: TextField(
                        onChanged: (String value) {
                          /// The value is the value of the TextField.
                          /// You can perform the calculations here:
                        },
                        controller: total,
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
                          hintText: '0.0',
                          hintStyle: TextStyle(
                            color:Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),          //TOTALLLLLLLLLL
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width: 23),
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
                child: Text('Cobrar'),
                color: Color(0xff2a4e6c),
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),   //COBRARRRRRRR
            SizedBox(width: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Vuelto: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10),
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
                      width: 110.0,
                      child: TextField(
                        onChanged: (String value) {
                          /// The value is the value of the TextField.
                          /// You can perform the calculations here:
                        },
                        controller: cambio,
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
                          hintText: '0.0',
                          hintStyle: TextStyle(
                            color:Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),         //VUELTOOOOOO
          ],
        ),
        SizedBox(height: 7),
        Divider(
          thickness: 5,
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 17),
            Column(
              children: <Widget>[
                SizedBox(height: 10),
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
                  width: 220.0,
                  child: TextField(
                    onChanged: (String value) {
                      /// The value is the value of the TextField.
                      /// You can perform the calculations here:
                    },
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
                      hintStyle: TextStyle(
                        color:Colors.black38,
                      ),
                    ),
                  ),
                ),
              ],
            ),      //CODIGOOOO
            SizedBox(width: 30),
            Column(
              children: <Widget>[
                SizedBox(height: 11),
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
                  width: 40.0,
                  child: FlatButton(
                    child: Text('+'),
                    color: Color(0xff2a4e6c),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),      // AGREGARrrr
            SizedBox(width: 20),
            Column(
              children: <Widget>[
                SizedBox(height: 11),
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
                  width: 40.0,
                  child: FlatButton(
                    child: Text('-'),
                    color: Color(0xff2a4e6c),
                    textColor: Colors.white,
                    onPressed: (){},
                  ),
                ),
              ],
            ),      // QUITAAAR
          ],
        ),
        SizedBox(height:10),
        Divider(
          thickness: 5,
        ),
        SizedBox(height:10),
        RaisedButton(
          child: Text('Add'),
          onPressed: () {
            //addItemToList();
          },
        ),
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.all(2),
                    color: msgCount[index]>=10? Colors.blue[400]:
                    msgCount[index]>3? Colors.blue[100]: Colors.grey,
                    child: Center(
                        child: Text('${names[index]} (${msgCount[index]})',
                          style: TextStyle(fontSize: 18),
                        )
                    ),
                  );
                }
            )
        )
      ],
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Falta agregar el pago'),
    ),
  );
}

void _showToast2(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Compra registrada'),
    ),
  );
}