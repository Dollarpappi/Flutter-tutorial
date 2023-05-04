import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text(
          "ERA",
          style: TextStyle(
            fontSize: 60,
            color: Colors.black,
            fontFamily: AutofillHints.birthdayMonth,
          ),
        ),
        elevation: 50,
        shadowColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        /// to make it scrollable u rap it inside another widget... singlechild makes it scrollable
        child: Container(
          padding: const EdgeInsets.all(60),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("1")),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("2")),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("3")),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
              height: 40,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("4")),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("5")),
                ),
                const SizedBox(
                  width: 50,
                  height: 40,
                ),
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("6")),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
              height: 40,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("7")),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("8")),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 70,
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("9")),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
              height: 40,
            ),
          ]),
        ),
      ),
    );
  }
}
