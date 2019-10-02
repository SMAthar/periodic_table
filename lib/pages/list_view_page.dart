import 'package:flutter/material.dart';
import 'package:priodic_table/model/model.dart';
import 'package:priodic_table/widgets/widgets.dart';

class ListViewPage extends StatelessWidget {

  final ElementList elementList;
  ListViewPage({this.elementList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Periodic Table"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.dashboard),
            tooltip: "Table View",
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: elementList.elements.length, 
        itemBuilder: (BuildContext context, int index) {
          return CustomListTile(
            element: elementList.elements[index],
            elementList: elementList,
          );
        },
      ),
    );
  }
}