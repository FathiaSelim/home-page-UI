import 'package:flutter/material.dart';
class any_Product extends StatelessWidget {
  String text;
  any_Product(this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("$text"),
      ),
    );
  }
}