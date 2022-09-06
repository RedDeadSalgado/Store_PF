import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget{
  const HeaderWidget({
    Key key,
    @required this.index,
}) : super( key: key);

  final int index;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 120.0,
      child: Card(
        elevation: 8.0,
        color: Color(0xff2a4e6c),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Categorias',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48.0,
                color: Colors.white,
              ),
            ),
            Text(
                'Travel Plans',textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}