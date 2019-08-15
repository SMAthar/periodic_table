import 'package:flutter/material.dart';
import 'package:priodic_table/model/element.dart' as elmnt;

class CustomListTile extends StatelessWidget {
  final elmnt.Element element;

  CustomListTile({this.element});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: (){},
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                child: Text(element.symbole),
              ),
              Column(
                children: <Widget>[
                  Text(element.name),
                  Text(element.eConfig),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(element.atomicNo.toString()),
                  Text(element.phase),
                ],
              )
            ],
          ),
        ),
      ),
      //elevation: 1.0,
    );
  }
}