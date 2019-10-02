import 'package:flutter/material.dart';

class GroupRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 8,),
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

class GroupTag extends StatelessWidget {
  final int groupNum;

  GroupTag({this.groupNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.025,
      child: Center(child: Text(groupNum.toString())),
    );
  }
}