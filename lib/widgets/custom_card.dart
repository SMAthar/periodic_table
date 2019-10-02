import 'package:flutter/material.dart';
import 'package:priodic_table/model/model.dart';
import 'package:priodic_table/pages/pages.dart';
import 'package:priodic_table/resources/resources.dart';

class CustomCard extends StatelessWidget {

  final Elements element;
  final ElementList elementList;

  CustomCard({this.element,this.elementList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      height: MediaQuery.of(context).size.width * 0.15,
      width: MediaQuery.of(context).size.width * 0.15,
      child: OutlineButton(
        padding: EdgeInsets.all(5),
        borderSide: BorderSide(
          color: mapBColor(element)
        ),
        highlightedBorderColor: mapColor(element),
        splashColor: mapColor(element),
        hoverColor: mapColor(element),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(element: element,elementList: elementList,)
            ) 
          );
        },
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(element.atomicNo.toString(),style: TextStyle(fontSize: 10)),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(element.symbole, style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}