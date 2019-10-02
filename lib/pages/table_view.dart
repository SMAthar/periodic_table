import 'package:flutter/material.dart';
import 'package:priodic_table/pages/pages.dart';
import 'package:priodic_table/widgets/widgets.dart';
import 'package:priodic_table/model/model.dart';

class TableView extends StatelessWidget {
  final ElementList elementList;

  TableView({this.elementList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Periodic Table"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            tooltip: "List View",
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ListViewPage(elementList:elementList)
              ));
            },
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PeriodColumn(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GroupRow(),
              SizedBox(height: 10,),
              Row( 
                children: <Widget>[
                  SizedBox(width: 8,),
                  CustomCard(element: elementList.elements[0],elementList:elementList),
                  SizedBox(width: MediaQuery.of(context).size.width * 2.4,),
                  CustomCard(element: elementList.elements[1],elementList:elementList)
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  CustomCard(element: elementList.elements[2],elementList:elementList),
                  CustomCard(element: elementList.elements[3],elementList:elementList),
                  SizedBox(width: MediaQuery.of(context).size.width * 1.5 ),
                  CustomCard(element: elementList.elements[4],elementList:elementList),
                  CustomCard(element: elementList.elements[5],elementList:elementList),
                  CustomCard(element: elementList.elements[6],elementList:elementList),
                  CustomCard(element: elementList.elements[7],elementList:elementList),
                  CustomCard(element: elementList.elements[8],elementList:elementList),
                  CustomCard(element: elementList.elements[9],elementList:elementList),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  CustomCard(element: elementList.elements[10],elementList:elementList,),
                  CustomCard(element: elementList.elements[11],elementList:elementList,),
                  SizedBox(width: MediaQuery.of(context).size.width * 1.5),
                  CustomCard(element: elementList.elements[12],elementList:elementList,),
                  CustomCard(element: elementList.elements[13],elementList:elementList,),
                  CustomCard(element: elementList.elements[14],elementList:elementList,),
                  CustomCard(element: elementList.elements[15],elementList:elementList,),
                  CustomCard(element: elementList.elements[16],elementList:elementList,),
                  CustomCard(element: elementList.elements[17],elementList:elementList,),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  CustomCard(element: elementList.elements[18],elementList:elementList,),
                  CustomCard(element: elementList.elements[19],elementList:elementList,),
                  CustomCard(element: elementList.elements[20],elementList:elementList,),
                  CustomCard(element: elementList.elements[21],elementList:elementList,),
                  CustomCard(element: elementList.elements[22],elementList:elementList,),
                  CustomCard(element: elementList.elements[23],elementList:elementList,),
                  CustomCard(element: elementList.elements[24],elementList:elementList,),
                  CustomCard(element: elementList.elements[25],elementList:elementList,),
                  CustomCard(element: elementList.elements[26],elementList:elementList,),
                  CustomCard(element: elementList.elements[27],elementList:elementList,),
                  CustomCard(element: elementList.elements[28],elementList:elementList,),
                  CustomCard(element: elementList.elements[29],elementList:elementList,),
                  CustomCard(element: elementList.elements[30],elementList:elementList,),
                  CustomCard(element: elementList.elements[31],elementList:elementList,),
                  CustomCard(element: elementList.elements[32],elementList:elementList,),
                  CustomCard(element: elementList.elements[33],elementList:elementList,),
                  CustomCard(element: elementList.elements[34],elementList:elementList,),
                  CustomCard(element: elementList.elements[35],elementList:elementList,),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  CustomCard(element: elementList.elements[36],elementList:elementList,),
                  CustomCard(element: elementList.elements[37],elementList:elementList,),
                  CustomCard(element: elementList.elements[38],elementList:elementList,),
                  CustomCard(element: elementList.elements[39],elementList:elementList,),
                  CustomCard(element: elementList.elements[40],elementList:elementList,),
                  CustomCard(element: elementList.elements[41],elementList:elementList,),
                  CustomCard(element: elementList.elements[42],elementList:elementList,),
                  CustomCard(element: elementList.elements[43],elementList:elementList,),
                  CustomCard(element: elementList.elements[44],elementList:elementList,),
                  CustomCard(element: elementList.elements[45],elementList:elementList,),
                  CustomCard(element: elementList.elements[46],elementList:elementList,),
                  CustomCard(element: elementList.elements[47],elementList:elementList,),
                  CustomCard(element: elementList.elements[48],elementList:elementList,),
                  CustomCard(element: elementList.elements[49],elementList:elementList,),
                  CustomCard(element: elementList.elements[50],elementList:elementList,),
                  CustomCard(element: elementList.elements[51],elementList:elementList,),
                  CustomCard(element: elementList.elements[52],elementList:elementList,),
                  CustomCard(element: elementList.elements[53],elementList:elementList,),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  CustomCard(element: elementList.elements[54],elementList:elementList,),
                  CustomCard(element: elementList.elements[55],elementList:elementList,),
                  CustomCard(element: elementList.elements[56],elementList:elementList,),
                  CustomCard(element: elementList.elements[71],elementList:elementList,),
                  CustomCard(element: elementList.elements[72],elementList:elementList,),
                  CustomCard(element: elementList.elements[73],elementList:elementList,),
                  CustomCard(element: elementList.elements[74],elementList:elementList,),
                  CustomCard(element: elementList.elements[75],elementList:elementList,),
                  CustomCard(element: elementList.elements[76],elementList:elementList,),
                  CustomCard(element: elementList.elements[77],elementList:elementList,),
                  CustomCard(element: elementList.elements[78],elementList:elementList,),
                  CustomCard(element: elementList.elements[79],elementList:elementList,),
                  CustomCard(element: elementList.elements[80],elementList:elementList,),
                  CustomCard(element: elementList.elements[81],elementList:elementList,),
                  CustomCard(element: elementList.elements[82],elementList:elementList,),
                  CustomCard(element: elementList.elements[83],elementList:elementList,),
                  CustomCard(element: elementList.elements[84],elementList:elementList,),
                  CustomCard(element: elementList.elements[85],elementList:elementList,),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  CustomCard(element: elementList.elements[86],elementList:elementList,),
                  CustomCard(element: elementList.elements[87],elementList:elementList,),
                  CustomCard(element: elementList.elements[88],elementList:elementList,),
                  CustomCard(element: elementList.elements[103],elementList:elementList,),
                  CustomCard(element: elementList.elements[104],elementList:elementList,),
                  CustomCard(element: elementList.elements[105],elementList:elementList,),
                  CustomCard(element: elementList.elements[106],elementList:elementList,),
                  CustomCard(element: elementList.elements[107],elementList:elementList,),
                  CustomCard(element: elementList.elements[108],elementList:elementList,),
                  CustomCard(element: elementList.elements[109],elementList:elementList,),
                  CustomCard(element: elementList.elements[110],elementList:elementList,),
                  CustomCard(element: elementList.elements[111],elementList:elementList,),
                  CustomCard(element: elementList.elements[112],elementList:elementList,),
                  CustomCard(element: elementList.elements[113],elementList:elementList,),
                  CustomCard(element: elementList.elements[114],elementList:elementList,),
                  CustomCard(element: elementList.elements[115],elementList:elementList,),
                  CustomCard(element: elementList.elements[116],elementList:elementList,),
                  CustomCard(element: elementList.elements[117],elementList:elementList,),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.001,
                  ),
                  CustomCard(element: elementList.elements[57],elementList:elementList,),
                  CustomCard(element: elementList.elements[58],elementList:elementList,),
                  CustomCard(element: elementList.elements[59],elementList:elementList,),
                  CustomCard(element: elementList.elements[60],elementList:elementList,),
                  CustomCard(element: elementList.elements[61],elementList:elementList,),
                  CustomCard(element: elementList.elements[62],elementList:elementList,),
                  CustomCard(element: elementList.elements[63],elementList:elementList,),
                  CustomCard(element: elementList.elements[64],elementList:elementList,),
                  CustomCard(element: elementList.elements[65],elementList:elementList,),
                  CustomCard(element: elementList.elements[66],elementList:elementList,),
                  CustomCard(element: elementList.elements[67],elementList:elementList,),
                  CustomCard(element: elementList.elements[68],elementList:elementList,),
                  CustomCard(element: elementList.elements[69],elementList:elementList,),
                  CustomCard(element: elementList.elements[70],elementList:elementList,),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.001,
                  ),
                  CustomCard(element: elementList.elements[89],elementList:elementList,),
                  CustomCard(element: elementList.elements[90],elementList:elementList,),
                  CustomCard(element: elementList.elements[91],elementList:elementList,),
                  CustomCard(element: elementList.elements[92],elementList:elementList,),
                  CustomCard(element: elementList.elements[93],elementList:elementList,),
                  CustomCard(element: elementList.elements[94],elementList:elementList,),
                  CustomCard(element: elementList.elements[95],elementList:elementList,),
                  CustomCard(element: elementList.elements[96],elementList:elementList,),
                  CustomCard(element: elementList.elements[97],elementList:elementList,),
                  CustomCard(element: elementList.elements[98],elementList:elementList,),
                  CustomCard(element: elementList.elements[99],elementList:elementList,),
                  CustomCard(element: elementList.elements[100],elementList:elementList,),
                  CustomCard(element: elementList.elements[101],elementList:elementList,),
                  CustomCard(element: elementList.elements[102],elementList:elementList,),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}