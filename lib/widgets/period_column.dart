import 'package:flutter/material.dart';
import 'package:priodic_table/widgets/period_tag.dart';

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