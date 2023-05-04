import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  bool? isChecked = false;
  int? gender = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("forms"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                // USED TO CREATE A FORM
                decoration: InputDecoration(
                    label: Text("USERNMAE"),
                    hintText: "ENTER YOUR NAME",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.amber,
                    prefixIcon: const Icon(Icons.person)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                // USED TO CREATE A FORM
                decoration: InputDecoration(
                  label: const Text("PASSWPORD"),
                  hintText: " ENTER YOUR PASSWORD",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.brown,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: const Text("Email"),
                  hintText: "ENTER EMAIL",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.cyan,
                  prefix: const Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLength: 50,
                maxLines: 6,
                decoration: InputDecoration(
                  label: const Text("ABOUT"),
                  hintText: "ABOUT SELF",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: const Icon(Icons.edit),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("MALE"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                      const SizedBox(width: 10),
                      const Text("FEMALE"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("OTHER")
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("PLS PAY ME MY MONEY")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  // add button
                  shape: const StadiumBorder(),
                  color: Colors.grey,
                  hoverColor: Colors.blue,
                  child: const Text("SUBMIT"),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
