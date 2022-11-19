import 'package:flutter/material.dart';

import 'card_Widget.dart';
class product extends StatefulWidget {
  const product({Key? key}) : super(key: key);

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  List<String>name=["Devices","books","IOT tools","Engineering tools","Chemical tools",];
  List<String>image=["assets/product/laptop.png","assets/product/books.jpg","assets/product/IOT tools.jpg",
    "ssets/product/engineering-tools.jpg","assets/product/chemical tools.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView.builder(
        itemCount:name.length,
        itemBuilder: (context, index){
          return card_Widget(image[index], name[index]);
        },
      ),
    );
  }
}