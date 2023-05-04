import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Formswork extends StatefulWidget {
  const Formswork({super.key});

  @override
  State<Formswork> createState() => _FormsworkState();
}

class _FormsworkState extends State<Formswork> {
  bool showpassword = false;
  void hidecontent() {
    showpassword = !showpassword;
    setState(() {});
  }

  TextEditingController textCtrl = TextEditingController();
  TextEditingController ageCtrl = TextEditingController();
  GlobalKey<FormState> authKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        leading: Icon(Icons.home),
        title: Text("MY FORM FIELD PLAY GROUND"),
      ),
      body: Container(
        padding: EdgeInsets.all(70),
        child: SingleChildScrollView(
          child: Form(
              key: authKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FILL IN THE FORM",
                        style: TextStyle(
                          fontSize: 30,
                          inherit: true,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "INPUT YOURS NAME PLEASE";
                        }
                        return null;
                      },
                      controller: textCtrl,
                      decoration: const InputDecoration(
                          label: Text("INPUT TEXT"),
                          border:
                              OutlineInputBorder(borderSide: BorderSide()))),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "INPUT A LONGER PASSWORD";
                      }

                      return null;
                    },
                    controller: ageCtrl,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        label: Text("AGE")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      obscureText: !showpassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              hidecontent();
                            },
                            icon: showpassword
                                ? const Icon(Icons.remove_red_eye)
                                : const Icon(Icons.visibility)),
                        label: Text("${textCtrl.text}  ${ageCtrl.text}"),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                      shape: StadiumBorder(),
                      height: 90,
                      minWidth: 90,
                      child: Text("SUBMIT"),
                      color: Color.fromARGB(255, 50, 61, 70),
                      elevation: 50,
                      hoverColor: Colors.cyan,
                      onPressed: () {
                        setState(() {
                          if (authKey.currentState!.validate()) {
                            authKey.currentState!.save();
                            Map<dynamic, String> users = {};
                            users["fullname"] = textCtrl.text;
                            users["Ages"] = ageCtrl.text;
                          }
                        });
                      })
                ],
              )),
        ),
      ),
    );
  }
}
