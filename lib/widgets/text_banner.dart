import 'package:flutter/material.dart';
import 'package:priodic_table/model/element.dart' as elem;
import 'package:priodic_table/resources/color_convert.dart';

class TextBanner extends StatelessWidget {
  const TextBanner({
    Key key,
    @required this.element,
    @required this.text
  }) : super(key: key);

  final elem.Element element;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [mapColor(element),Colors.transparent]
        )
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontFamily: "montserrat",
        ),
      ),
    );
  }
}