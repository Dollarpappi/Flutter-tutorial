import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashBoard extends StatefulWidget {
  Map<String, dynamic> userDetails;
  DashBoard({super.key, required this.userDetails});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userDetails['username'] + "'s Profile"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Text("Username"),
                SizedBox(
                  width: 20,
                ),
                Text(widget.userDetails['username']),

                ///
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Password"),
                SizedBox(
                  width: 20,
                ),
                Text(widget.userDetails['password']),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Email"),
                SizedBox(
                  width: 20,
                ),
                Text(widget.userDetails['email']),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
