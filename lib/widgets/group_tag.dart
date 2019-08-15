import 'package:flutter/material.dart';

class GroupTag extends StatelessWidget {
  final int groupNum;

  GroupTag({this.groupNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.025,
      child: Center(child: Text(groupNum.toString())),
    );
  }
}