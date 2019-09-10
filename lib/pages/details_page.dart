import 'package:flutter/material.dart';
import 'package:priodic_table/model/element.dart' as elem;
import 'package:priodic_table/resources/color_convert.dart';
import 'package:priodic_table/widgets/nevigation_tab.dart';

class DetailsPage extends StatelessWidget {
  final elem.Element element;
  final elem.ElementList elementList;

  DetailsPage({
    this.element,
    this.elementList
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  element.imgPath,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
              Positioned(
                top: 150,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: mapColor(element),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))
                  ),
                  height: 25,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(element.atomicNo.toString()),
                      Text(element.name)
                    ],
                  )
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              element.atomicNo == 1 ? DammyNT() : NavigationTab(element: elementList.elements[element.atomicNo - 2],elementList: elementList,),
              element.atomicNo == 118 ? DammyNT() : NavigationTab(element: elementList.elements[element.atomicNo],elementList: elementList,)
            ],
          ),
          Container(
            color: Colors.black54,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Name"),
                      Text(element.name)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Symbole"),
                      Text(element.symbole)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
