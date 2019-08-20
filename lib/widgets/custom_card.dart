import 'package:flutter/material.dart';
import 'package:priodic_table/model/element.dart' as elem;
import 'package:priodic_table/pages/details_page.dart';
import 'package:priodic_table/resources/color_convert.dart';

class CustomCard extends StatelessWidget {

  final elem.Element element;
  final elem.ElementList elementList;

  CustomCard({this.element,this.elementList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.15,
      width: MediaQuery.of(context).size.width * 0.15,
      color: mapColor(element),
      child: InkWell(
        onTap: (){
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>DetailsPage(element: element,elementList:elementList)));
        },
        child: Stack(
          children: <Widget>[
            Align(
              // Atomic number label
              alignment: Alignment.topLeft,
              child: Container(
                width: 25.0,
                height: 20.0,
                //color: mapBColor(element),
                child: Center(child: Text(element.atomicNo.toString())),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                element.symbole,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}