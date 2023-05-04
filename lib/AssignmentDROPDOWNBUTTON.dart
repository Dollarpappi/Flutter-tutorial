import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class dropdownB extends StatefulWidget {
  const dropdownB({super.key});

  @override
  State<dropdownB> createState() => _dropdownBState();
}

class _dropdownBState extends State<dropdownB> {
  var _fruitslist = ["oranges", "banana", "pineapples"];
  var dropdown = "oranges";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: Column(
            children: [
              Form(
                child: DropdownButton(
                  items: _fruitslist.map((_fruitlist) {
                    return DropdownMenuItem(
                        value: _fruitslist, child: Text(_fruitlist));
                  }).toList(),
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      dropdown = value as String;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
