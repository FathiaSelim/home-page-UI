import 'package:flutter/material.dart';
class any_service extends StatelessWidget {
  String text;
  any_service(this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("$text"),
      ),
    );
  }
}