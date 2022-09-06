import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ejercicio/models/productos.dart';

class historico extends StatefulWidget{
  final String mensaje;
  historico({Key key, @required this.mensaje}) : super(key: key);

  @override
  _historicoState createState() => _historicoState();
}

final List<String> names = <String>["Papel higienico", "Mayonesa", "Negrito"];
final List<int> msgCount = <int>[4,3,5];
final List<int> posis = <int>[];
final List<double> prices = <double>[94.0,45.0,52.5];

final venta = TextEditingController();
final ganancia = TextEditingController();

class _historicoState extends State<historico>{

  void vaciar(){
    setState(() {
      names.clear();
      msgCount.clear();
      prices.clear();
    });
  }

  @override
  void initState(){
    venta.text = "191.5";
    ganancia.text = "75.0";
  }

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff2a4e6c),
      appBar:AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Historico"),
      ),
      body: Column(
        children: <Widget>[
          TableCalendar(
            focusedDay: selectedDay,
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: format,
            onFormatChanged: (CalendarFormat _format){
              setState(() {
                format = _format;
              });
            },
            daysOfWeekVisible: true,
            onDaySelected: (DateTime selectDay, DateTime focusDay){
              setState(() {
                selectedDay = selectDay;
                focusedDay = focusDay;
                vaciar();
                print(focusedDay);
                venta.text = "0.0";
                ganancia.text = "0.0";
              });
            },
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Color(0xff2a4e6c),
                shape: BoxShape.circle,
              ),
              selectedTextStyle: TextStyle(
                color:  Colors.white,
              ),
              todayDecoration: BoxDecoration(
                color: Color(0xcc2a4e6c),
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              formatButtonDecoration: BoxDecoration(
                color: Color(0xff2a4e6c),
                borderRadius: BorderRadius.circular(5.0),
              ),
              formatButtonTextStyle: TextStyle(color: Colors.white),
            ),
            selectedDayPredicate: (DateTime date){
              return isSameDay(selectedDay, date);
            },
          ),
          Divider(thickness: 5),
          SizedBox(height: 5),
          Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width:80),
                  Column(
                    children: <Widget>[
                      //SizedBox(height: 10),
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
                            //getCambio();
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
                            hintText: '0.0',
                            hintStyle: TextStyle(
                              color:Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 75),
                  Column(
                    children: <Widget>[
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
                            //getCambio();
                          },
                          controller:ganancia,
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
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      Text(
                        "Venta: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 120),
                      Text(
                        "Lucro: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),


            ],
          ),
          SizedBox(height: 5),
          Divider(thickness: 5),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        //codigo.text =  products[posis[index]].codigo.toString();
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
}
