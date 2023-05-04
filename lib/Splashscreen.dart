import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertutorials/carouselassignment.dart';

class SplashWork extends StatefulWidget {
  const SplashWork({super.key});

  @override
  State<SplashWork> createState() => _SplashWorkState();
}

class _SplashWorkState extends State<SplashWork> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      var route = MaterialPageRoute(
        builder: (context) => const AssignmentCa(),
      );
      Navigator.push(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //padding: EdgeInsets.all(20),
        //margin: EdgeInsets.all(20),
        color: (Color.fromARGB(255, 94, 91, 91)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Image(
                height: 300,
                width: 150,
                image: AssetImage(
                    "assets/images/istockphoto-1386131538-612x612.jpg")),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
