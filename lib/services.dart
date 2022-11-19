import 'package:flutter/material.dart';
import 'package:services/card_widget_service.dart';
class service extends StatefulWidget {
  const service({Key? key}) : super(key: key);

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  List<String>name=["PDF","links","video","Image","Summarization",];
  List<String>image=["assets/service/pdf.jpg","assets/service/link.jpg","assets/service/video.jpg",
    "assets/service/image.jpg","assets/service/summary.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView.builder(
        itemCount:name.length,
        itemBuilder: (context, index){
          return card_Widget_service(image[index], name[index]);
        },
      ),
    );
  }
}