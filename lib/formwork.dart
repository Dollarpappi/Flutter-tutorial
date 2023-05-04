import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertutorials/dashboard.dart';

class Myownform extends StatefulWidget {
  const Myownform({super.key});

  @override
  State<Myownform> createState() => _MyownformState();
}

class _MyownformState extends State<Myownform> {
  GlobalKey<FormState> authKey = GlobalKey<FormState>();
  int? gender = 0;
  bool showPassword = false;
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  void switchpPassword() {
    showPassword = !showPassword;
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    usernameCtrl.dispose();
    passwordCtrl.dispose();
    emailCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FORM"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            color: const Color.fromARGB(255, 222, 225, 228),
            padding: const EdgeInsetsDirectional.all(
              35,
            ),
            child: Form(
              key: authKey,
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
                      const Text("Carl"),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: const Text("Flutter Developer"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: usernameCtrl,
                    decoration: InputDecoration(
                      label: const Text("FULLNAME"),
                      hintText: "INPUT NAME",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value!.length < 9) {
                        return "ADD MORE LETTERS";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordCtrl,
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      label: const Text("SET PASSWORD"),
                      hintText: "Put password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: IconButton(
                        onPressed: () {
                          switchpPassword();
                        },
                        icon: showPassword
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "put a password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailCtrl,
                    decoration: InputDecoration(
                        label: const Text("EMAIL"),
                        hintText: "INPUT EMAIL",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                    validator: (value) {
                      if (value!.length < 7) {
                        return "PLEASE IN PUT FULL NAME";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                      const Text("male")
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
                      const Text("Female"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    elevation: 40,
                    color: Colors.black45,
                    shape: const StadiumBorder(),
                    hoverColor: Colors.grey,
                    onPressed: () {
                      if (authKey.currentState!.validate()) {
                        authKey.currentState!.save();
                        Map<String, dynamic> users = {};
                        users["username"] = usernameCtrl.text;
                        users["password"] = passwordCtrl.text;
                        users["email"] = emailCtrl.text;
                        var route = MaterialPageRoute(
                            builder: (context) => DashBoard(
                                  userDetails: users,
                                ));
                        Navigator.push(context, route);
                      }
                    },
                    child: const Text("SUBMIT"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
