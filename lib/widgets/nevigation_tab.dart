import 'package:flutter/material.dart';
import 'package:priodic_table/model/model.dart';
import 'package:priodic_table/pages/pages.dart';
import 'package:priodic_table/resources/resources.dart';

class NavigationTab extends StatelessWidget {
  final Elements element;
  final ElementList elementList;

  NavigationTab({
    this.element,
    this.elementList
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => DetailsPage(element: element,elementList: elementList,)) 
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5 - 1,
        height: 80.0,
        color: Colors.black45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: mapBColor(element),
              child: Center(
                child: Text(
                  element.symbole,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Text(element.name)
          ],
        ),
      ),
    );
  }
}

class DammyNT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 80.0,
      color: Colors.black45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.grey[800],
          ),
          Container(
            width: 100,
            height: 20,
            color: Colors.grey[800],
          )
        ],
      ),
    );
  }
}