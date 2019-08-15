import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
          "assets/images/giphy.gif",
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}