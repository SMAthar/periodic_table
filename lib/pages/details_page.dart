import 'package:flutter/material.dart';
import 'package:priodic_table/model/element.dart' as elem;
import 'package:priodic_table/resources/color_convert.dart';
import 'package:priodic_table/resources/text_style.dart';
import 'package:priodic_table/widgets/text_banner.dart';

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
        backgroundColor: mapBColor(element),
        title: Text(element.name),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                if(element.atomicNo != 1){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> DetailsPage(
                      element: elementList.elements[element.atomicNo - 2],elementList: elementList,)
                    )
                  );
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: (){
                if(element.atomicNo != 118)
                {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> DetailsPage(
                      element: elementList.elements[element.atomicNo],elementList: elementList,)
                    )
                  );
                }
              },
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            element.imgPath,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [mapBColor(element), Colors.transparent]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextBanner(element: element, text:"General Info"),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Name",style: detailItemStyle),
                            Text(element.name,style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Symbol",style: detailItemStyle),
                            Text(element.symbole,style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Atomic No",style: detailItemStyle),
                            Text(element.atomicNo.toString(),style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Period",style: detailItemStyle),
                            Text(element.period.toString(),style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Group",style: detailItemStyle),
                            Text(element.group.toString(),style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Block",style: detailItemStyle),
                            Text(element.block,style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("State",style: detailItemStyle),
                            Text(element.phase,style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Element type",style: detailItemStyle),
                            Text(element.elementType,style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Family",style: detailItemStyle),
                            element.family != null 
                            ? Text(element.family, style: detailItemStyle,)
                            : Text(""),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("E Config",style: detailItemStyle),
                            Text(element.eConfig,style: detailItemStyle)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Discovered By",style: detailItemStyle),
                            element.discoveredBy != null
                              ? Text(element.discoveredBy,style: detailItemStyle)
                              : Text(""), 
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
