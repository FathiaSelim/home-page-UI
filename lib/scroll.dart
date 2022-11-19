import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:services/add_screen.dart';
import 'package:services/product.dart';
import 'package:services/services.dart';

class scroll extends StatefulWidget {
  const scroll({Key? key}) : super(key: key);

  @override
  State<scroll> createState() => _scrollState();
}

class _scrollState extends State<scroll> {
  List<Tab> tabs = [
    Tab(child: Text("Products",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)),
    Tab(child: Text("Services",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))),

  ];

  List<Widget> tabsContent = [
    product(),
    service(),

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        bottomNavigationBar:Container(
          color: Colors.white60,
          height: MediaQuery.of(context).size.height/15,
          child: GNav(
              haptic: true,
              tabBorderRadius: 15,
              curve: Curves.easeOutExpo,
              duration: Duration(milliseconds: 900),
              gap: 8,
              color: Colors.blueGrey[800],
              activeColor: Colors.blue,
              tabBackgroundColor: Colors.blue.withOpacity(0.1),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical:5),
              tabs:[
                GButton(
                  icon: Icons.home,
                  text: "Home",),
                GButton(
                  icon: Icons.favorite,
                  text: "Favorite",),
                GButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => add_Screen()),);
                  },

                  icon: Icons.add,
                  text: 'Add', ),
                GButton(
                  icon: Icons.message,
                  text: "Messages",),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',),
              ]),
        ),

        appBar: AppBar(
          title: Text(""),
          backgroundColor:  Colors.blue,
          centerTitle: true,
          brightness: Brightness.dark,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/20),
            child: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: tabs,
            ),
          ),
        ),
        body: TabBarView(
          children: tabsContent,
        ),
      ),
    );
  }
}