import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<Map> names = [
    {"names": "Somto", "grade": "pass"},
    {"names": "Sean", "grade": "pass"},
    {"names": "Carl", "grade": "pass"},
  ];
  @override
  Widget build(BuildContext context) {
    //whats this for?
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST VIEW "),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              // the builder builts the list   index: from 0, 1, 2 ....
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      names[index]["names"].substring(0, 1),
                    ),
                  ),
                  title: Text(names[index]["names"]),
                  subtitle: Text(
                    names[index]["grade"],
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      names.removeAt(index);
                      setState(
                          () {}); //// setstate it tells ur screen that a change is occuring
                    },
                    icon: Icon(Icons.cancel),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
