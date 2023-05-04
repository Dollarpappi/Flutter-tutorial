import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertutorials/Listview_builder.dart';

class BlogPOST extends StatelessWidget {
  const BlogPOST({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOGPOST"),
      ),
      body: ListView(
        // scrollable widget list view
        children: [
          newsCard(),
          newsCard(),
          newsCard(),
          newsCard(),
        ],
      ),
    );
  }

  Widget newsCard() {
    return Container(
        margin: const EdgeInsets.all(50),
        height: 600,
        color: Colors.grey,
        child: Card(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("SOMTEE"),
                    Expanded(
                      /// to make it take up all remaining space
                      child: Container(
                        alignment: Alignment.centerRight,

                        /// to align it to the right
                        child: const Text("thursday"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/smoke.jpg"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.share),
                    Icon(Icons.favorite),
                    Icon(Icons.home),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
