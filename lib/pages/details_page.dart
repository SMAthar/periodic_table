import 'package:flutter/material.dart';
import 'package:priodic_table/model/element.dart' as elem;
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black45,
        title: Text(element.name),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            element.imgPath,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              element.atomicNo == 1 ? DammyNT() : NavigationTab(element: elementList.elements[element.atomicNo - 2],elementList: elementList,),
              element.atomicNo == 118 ? DammyNT() : NavigationTab(element: elementList.elements[element.atomicNo],elementList: elementList,)
            ],
          )
        ],
      )
    );
  }
}
