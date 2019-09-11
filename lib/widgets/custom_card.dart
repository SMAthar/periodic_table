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