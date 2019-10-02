import 'package:flutter/material.dart';
import 'package:priodic_table/model/model.dart';
import 'package:priodic_table/pages/pages.dart';
import 'package:priodic_table/resources/resources.dart';

class CustomListTile extends StatelessWidget {

  final Elements element;
  final ElementList elementList;

  CustomListTile({
    this.element,
    this.elementList
    });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      leading: CircleAvatar(
        backgroundColor: mapBColor(element),
        child: Text(
          element.symbole,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      title: Text(element.name),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(element.atomicNo.toString()),
          SizedBox(width: 20,),
          Text(element.eConfig)
        ],
      ),
      trailing: Text(element.phase),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(element: element,elementList: elementList,)
          ) 
        );
      },
    );
  }
}