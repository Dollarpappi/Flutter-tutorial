import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:fluttertutorials/main.dart';

import 'card.dart';

class MyFormPersonal extends StatefulWidget {
  const MyFormPersonal({super.key});

  @override
  State<MyFormPersonal> createState() => _MyFormPersonalState();
}

class _MyFormPersonalState extends State<MyFormPersonal> {
  bool showpassword = false;
  void switchpassword() {
    showpassword = !showpassword;
    setState(() {});
  }

  GlobalKey<FormState> authKey =
      GlobalKey<FormState>(); ////it uses it to authenticate the whole form
  int? gender = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("MY FORM"),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Form(
          key: authKey,

          /// it authenticaes the whole form
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.cyanAccent,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: const Text("UserName"),
                        hintText: "Input name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Colors.black45,
                        prefixIcon: const Icon(Icons.person)),
                    validator: (value) {
                      if (value!.length < 5) {
                        return "Please enter a longer name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: !showpassword,
                    decoration: InputDecoration(
                        label: const Text("PASSWORD"),
                        hintText: "INPUT PASSWORD",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: Colors.grey,
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: Colors.blue,
                        suffixIcon: IconButton(
                            onPressed: () {
                              switchpassword();
                            },
                            icon: showpassword
                                ? const Icon(Icons.remove_red_eye)
                                : const Icon(Icons.visibility))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Write ur details";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "EMAIL ADDRESS",
                      hintStyle: const TextStyle(
                        color: Colors.green,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      filled: true,
                      fillColor: Colors.grey,
                    ),
                    /* validator: (value) {
                      var emailValid = EmailValidator.validate(value!);
                      if (!emailValid) {
                        return "Invalid email adress";
                      }
                      return null;
                    },*/
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLength: 50,
                    maxLines: 5,
                    decoration: InputDecoration(
                        label: const Text("ABOUT SELF"),
                        hintText: "TELL US ABOUT URSELF",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Colors.grey,
                        prefixIcon: const Icon(Icons.edit),
                        suffixIcon: const Icon(Icons.edit)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(children: [
                        Radio(
                            value: 1,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            }),
                        const Text("male"),
                      ]),
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
                                  value = gender;
                                });
                              }),
                          const Text("female"),
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
                          const Text("other adnormalies"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    color: Colors.grey,
                    shape: const StadiumBorder(),
                    hoverColor: Colors.green,
                    onPressed: () {
                      if (authKey.currentState!.validate()) {
                        authKey.currentState!.save();
                        var route = MaterialPageRoute(
                            builder: (context) => const BlogPOST());
                        Navigator.push(context, route);
                      }

                      //Navigator.pop(context);
                    },
                    child: const Text("DONE"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
