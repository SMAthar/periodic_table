import 'package:flutter/material.dart';

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