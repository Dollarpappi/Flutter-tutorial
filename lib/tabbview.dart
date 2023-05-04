import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertutorials/Alert_Dialogue.dart';
import 'package:fluttertutorials/card.dart';
import 'package:fluttertutorials/form.dart';

class Tabviewclass extends StatefulWidget {
  const Tabviewclass({super.key});

  @override
  State<Tabviewclass> createState() => _TabviewclassState();
}

class _TabviewclassState extends State<Tabviewclass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            //backgroundColor: Colors.transparent,
            title: Text(
              "WHATAPP",
              style: TextStyle(color: (Colors.black)),
            ),
            centerTitle: true,
            elevation: 0,
            leading: Icon(Icons.home),
            bottom: TabBar(
              indicatorColor: Colors.black38,
              indicatorWeight: 4,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              tabs: [
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "Calls",
                )
              ],
            ),
            actions: [Icon(Icons.search)]),
        body: TabBarView(children: [
          NotiDialogue(),
          Forms(),
          BlogPOST(),
        ]),
      ),
    );
  }
}
