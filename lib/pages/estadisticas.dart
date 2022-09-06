import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:ejercicio/models/productos.dart';


class estadisticas extends StatefulWidget{
  final String mensaje;
  estadisticas({Key key, @required this.mensaje}) : super(key: key);

  @override
  _estadisticasState createState() => _estadisticasState();
}

class _estadisticasState extends State<estadisticas>{

  List<GDPData> getChartData(){
    final List<GDPData> chartData = [
      GDPData('Negrito',5),
      GDPData('Papel Higienico',4),
      GDPData('Mayonesa',3),
      GDPData('Aceite',0),
      GDPData('Agua 600ml',0),
    ];
    return chartData;
  }

  TooltipBehavior _tooltipBehavior;
  List<GDPData> _charData;

  @override
  void initState() {
   _charData = getChartData();
   _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        //backgroundColor: Color(0xff2a4e6c),
        appBar:AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Estadisticas"),
        ),
      body: SfCircularChart(
       title: ChartTitle(text: 'Articulos mas comprados'),
        legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
        tooltipBehavior: _tooltipBehavior,
        series: <CircularSeries>[
       RadialBarSeries<GDPData, String>(
          dataSource: _charData,
          xValueMapper: (GDPData data,_) => data.item,
          yValueMapper: (GDPData data,_) => data.gdp,
          dataLabelSettings: DataLabelSettings(isVisible: true),
          enableTooltip: true,
        ),
      ],),
    );
  }



}

class GDPData{
  GDPData(this.item,this.gdp);
  final String item;
  final int gdp;
}