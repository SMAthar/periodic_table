import 'package:flutter/material.dart';
import 'package:priodic_table/widgets/group_tag.dart';

class GroupRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GroupTag(groupNum: 1,),
        GroupTag(groupNum: 2,),
        GroupTag(groupNum: 3,),
        GroupTag(groupNum: 4,),
        GroupTag(groupNum: 5,),
        GroupTag(groupNum: 6,),
        GroupTag(groupNum: 7,),
        GroupTag(groupNum: 8,),
        GroupTag(groupNum: 9,),
        GroupTag(groupNum: 10,),
        GroupTag(groupNum: 11,),
        GroupTag(groupNum: 12,),
        GroupTag(groupNum: 13,),
        GroupTag(groupNum: 14,),
        GroupTag(groupNum: 15,),
        GroupTag(groupNum: 16,),
        GroupTag(groupNum: 17,),
        GroupTag(groupNum: 18,),
      ],
    );
  }
}