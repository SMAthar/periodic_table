import 'package:flutter/material.dart';
import 'package:priodic_table/model/element.dart' as elem;
import 'package:priodic_table/pages/table_view.dart';
import 'package:priodic_table/widgets/nevigation_tab.dart';

class DetailsPage extends StatefulWidget {
  final elem.Element element;
  final elem.ElementList elementList;

  DetailsPage({
    this.element,
    this.elementList
  });

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black45,
        title: Text(widget.element.name),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => TableView(elementList: widget.elementList,)));
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            widget.element.imgPath,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              widget.element.atomicNo == 1 ? DammyNT() : NavigationTab(element: widget.elementList.elements[widget.element.atomicNo - 2],elementList: widget.elementList,),
              widget.element.atomicNo == 118 ? DammyNT() : NavigationTab(element: widget.elementList.elements[widget.element.atomicNo],elementList: widget.elementList,)
            ],
          )
        ],
      )
    );
  }
}
