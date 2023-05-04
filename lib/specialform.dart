import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Special extends StatefulWidget {
  const Special({super.key});

  @override
  State<Special> createState() => _SpecialState();
}

class _SpecialState extends State<Special> {
  bool showPassword = false;
  switchPassword() {
    showPassword = !showPassword;
    setState(() {});
  }

  int? gender = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPECIAL FORM"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image2.jpeg"), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage("assets/images/coolguy.png"),
                    ),
                  ],
                ),
                const Divider(
                  height: 10,
                  thickness: 9,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: const Text("UserName"),
                    hintText: "InputName",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 150, 146, 146),
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    hintText: "Input Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 141, 140, 137),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          switchPassword();
                        },
                        icon: showPassword
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      hintText: "Write Passwor",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 126, 123, 123),
                      prefixIcon: const Icon(Icons.edit),
                      suffixIcon: IconButton(
                          onPressed: () {
                            switchPassword();
                          },
                          icon: showPassword
                              ? const Icon(Icons.remove_red_eye)
                              : const Icon(Icons.visibility))),
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
                    const Text(
                      "Man",
                    ),
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
                    const Text("Boy"),
                  ],
                ),
                MaterialButton(
                  height: 60,
                  minWidth: 100,
                  color: Colors.grey,
                  shape: const StadiumBorder(),
                  elevation: 50,
                  hoverColor: Colors.green,
                  highlightElevation: 30,
                  onPressed: () {},
                  child: const Text("SUBMIT"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
