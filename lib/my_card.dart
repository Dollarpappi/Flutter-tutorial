import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PersonalCard extends StatefulWidget {
  const PersonalCard({super.key});

  @override
  State<PersonalCard> createState() => _PersonalCardState();
}

class _PersonalCardState extends State<PersonalCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 230,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            color: Colors.blue,
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 80,
                  left: 2,
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  )),
              Positioned(
                  top: 400,
                  child: Text(
                    "MY FORM WELCOME",
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.black,
                    ),
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
