import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertutorials/Listview_builder.dart';
import 'package:fluttertutorials/carouselassignment.dart';
import 'package:fluttertutorials/specialform.dart';

class BottomnavClass extends StatefulWidget {
  const BottomnavClass({super.key});

  @override
  State<BottomnavClass> createState() => _BottomnavClassState();
}

class _BottomnavClassState extends State<BottomnavClass> {
  int currentIndex =
      0; // this current index is the initial page that will show when u lunch ur app, o means lets start from the first page..
  List<Widget> items = [
    AssignmentCa(),
    ListViewBuilder(),
    Special(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(child: Text("BOTTOM NAVIGATION")),
      ),
      body: items[
          currentIndex], // it takes the item i.e the icon that the page is currently on
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.blue,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: "SHARE",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}
