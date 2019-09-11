import 'package:flutter/material.dart';

class PeriodColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.width * 0.075,),
        PeriodTag(periodNum: 1,),
        PeriodTag(periodNum: 2,),
        PeriodTag(periodNum: 3,),
        PeriodTag(periodNum: 4,),
        PeriodTag(periodNum: 5,),
        PeriodTag(periodNum: 6,),
        PeriodTag(periodNum: 7,),
      ],
    );
  }
}

class PeriodTag extends StatelessWidget {
  final int periodNum;

  PeriodTag({this.periodNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.025,
      height: MediaQuery.of(context).size.width * 0.15,
      child: Center(child: Text(periodNum.toString()),),
    );
  }
}