import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyOrkProject extends StatefulWidget {
  const MyOrkProject({super.key});

  @override
  State<MyOrkProject> createState() => _MyOrkProjectState();
}

class _MyOrkProjectState extends State<MyOrkProject> {
  TextEditingController controller = TextEditingController();
  String? initialUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 40,
          title: TextFormField(
              controller: controller,
              cursorColor: Color.fromARGB(255, 19, 19, 19),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    // borderRadius: BorderRadius.circular(20)
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 136, 132, 132),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  hoverColor: Colors.grey),
              showCursor: true,
              autocorrect: true),
        ),
        body: Container());
  }
}
