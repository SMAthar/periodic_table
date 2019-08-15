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
      child: InkWell(
        onTap: (){
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>DetailsPage(element: element,elementList:elementList)));
        },
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: mapColor(element),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0))
                ),
                child: Center(
                  child: Text(element.symbole),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: mapBColor(element),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0))
                ),
                child: Center(
                  child: Text(
                    element.atomicNo.toString()
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}