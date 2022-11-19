import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:services/any_service.dart';
class card_Widget_service extends StatelessWidget {
  String image;
  String text;
  card_Widget_service(this.image,this.text);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => any_service("$text")),);
        },
        child: Container(
          margin: EdgeInsets.all(2),
          height: MediaQuery.of(context).size.height/6.5,
          child:  Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),),
            shadowColor: Colors.blueGrey,
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    child: Image.asset(
                        '$image',
                        height: 150,
                        width: 130,
                        fit:BoxFit.fill

                    ),
                  ),
                  Container (alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width/2.3 ,
                      child: Text("$text",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),)),

                ],
              ),
            ),
          ),
        )
    );


  }
}